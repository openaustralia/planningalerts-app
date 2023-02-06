# frozen_string_literal: true

namespace :planningalerts do
  desc "Generate XML sitemap"
  task sitemap: :environment do
    GenerateSitemapService.call
  end

  namespace :emergency do
    desc "Regenerates all the counter caches in case they got out of synch"
    task fixup_counter_caches: :environment do
      Comment.counter_culture_fix_counts
    end
  end

  namespace :migrate do
    desc "copy first date scraped data to applications"
    task copy_first_date_scraped_data_to_applications: :environment do
      applications = Application.where(first_date_scraped: nil)
      puts "#{applications.count} to migrate..."
      progressbar = ProgressBar.create(total: applications.count, format: "%t: |%B| %e")
      applications.with_first_version.find_each do |application|
        application.update!(first_date_scraped: application.first_version.date_scraped)
        progressbar.increment
      end
    end
  end
end
