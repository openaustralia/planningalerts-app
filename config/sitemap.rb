# Depending on values in env variables for access to AWS
SitemapGenerator::Sitemap.adapter = SitemapGenerator::AwsSdkAdapter.new('planningalerts-sitemaps-production', region: 'ap-southeast-2')

SitemapGenerator::Sitemap.sitemaps_path = "sitemaps/"

# The directory to write sitemaps to locally
SitemapGenerator::Sitemap.public_path = 'tmp/sitemaps/'

SitemapGenerator::Sitemap.default_host = root_url(host: Rails.configuration.x.host, protocol: "https")

SitemapGenerator::Sitemap.create do
  add api_howto_path, changefreq: "monthly"
  add about_path, changefreq: "monthly"
  add faq_path, changefreq: "monthly"
  add get_involved_path, changefreq: "monthly"

  ::Application.select(:id, :date_scraped).find_each do |application|
    add application_path(application), changefreq: "monthly", lastmod: application.date_scraped
  end
end
