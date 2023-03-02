# frozen_string_literal: true

namespace :planningalerts do
  desc "update wikidata ids"
  task update_wikidata_ids: :environment do
    Authority.active.find_each do |authority|
      next if authority.wikidata_id.present?

      puts "Getting wikidata id for #{authority.full_name} (#{authority.website_url})..."
      wikidata_id = WikidataService.lga_id_from_website(authority.website_url)

      if wikidata_id
        puts wikidata_id
        authority.update!(wikidata_id:)
      else
        puts "WARNING: Couldn't find"
      end
    end
  end

  desc "get authority information from wikidata"
  task get_authority_wikidata_data: :environment do
    data = WikidataService.get_all_data
    CSV.open("wikidata.csv", "w") do |csv|
      Authority.active.where.not(wikidata_id: nil).order(:wikidata_id).each_with_index do |authority, index|
        row = data[authority.wikidata_id]
        csv << (row.keys + ["wikidata_id", "authority.state", "authority.website_url", "authority.population_2017", "authority.short_name"]) if index.zero?
        csv << (row.values + [authority.wikidata_id, authority.state, authority.website_url, authority.population_2017, authority.short_name])
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
