# frozen_string_literal: true

namespace :planningalerts do
  namespace :applications do
    desc "Import new applications, index them and send emails"
    task import_and_email: %i[import email]

    desc "Import all the applications for the last few days for all the loaded authorities"
    task import: :environment do
      authorities = Authority.active
      puts "Importing #{authorities.count} authorities"
      authorities.each do |authority|
        info_logger = AuthorityLogger.new(authority.id, Logger.new($stdout))
        ImportApplicationsService.call(authority:, logger: info_logger)
      end
    end

    desc "Send planning alerts"
    task email: :environment do
      QueueUpAlertsService.call(logger: Logger.new($stdout))
    end
  end

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
end
