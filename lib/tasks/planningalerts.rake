# frozen_string_literal: true

# Given an official website for an LGA return the wikidata ID
def wikidata_id_from_website(url)
  # Just doing the lookup by domain so that we can handle variants of the url (http/https and ending in "/")
  domain = URI.parse(url).host
  sparql = SPARQL::Client.new("https://query.wikidata.org/sparql")
  # The query build for sparql-client doesn't seem to generate code that wikidata like when using union.
  # So instead create the query by hand
  query = sparql.query("SELECT * WHERE { { ?item wdt:P856 <http://#{domain}> . } UNION { ?item wdt:P856 <http://#{domain}/> . } UNION { ?item wdt:P856 <https://#{domain}> . } UNION { ?item wdt:P856 <https://#{domain}/> . } }")
  return unless query.count == 1

  entity_url = query.first[:item].to_s
  entity_url.split("/").last
end

namespace :planningalerts do
  desc "update wikidata ids"
  task update_wikidata_ids: :environment do
    Authority.active.where(wikidata_id: nil).find_each do |authority|
      puts "Getting wikidata id for #{authority.full_name} (#{authority.website_url})..."
      wikidata_id = wikidata_id_from_website(authority.website_url)
      if wikidata_id
        puts wikidata_id
        authority.update!(wikidata_id:)
      else
        puts "Couldn't find or more than one found"
      end
    end
  end

  namespace :emergency do
    desc "Regenerates all the counter caches in case they got out of synch"
    task fixup_counter_caches: :environment do
      Comment.counter_culture_fix_counts
    end
  end
end
