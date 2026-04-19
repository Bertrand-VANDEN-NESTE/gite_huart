SitemapGenerator::Sitemap.default_host = "https://www.lentredeuxpommes.fr"
SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do

  add root_path, priority: 1.0, changefreq: 'daily'
  add "/rooms", priority: 0.9, changefreq: 'weekly'
  add "/activities", priority: 0.8, changefreq: 'weekly'
  add "/contact", priority: 0.7, changefreq: 'monthly'

end
