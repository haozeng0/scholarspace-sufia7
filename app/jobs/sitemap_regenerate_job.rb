class SitemapRegenerateJob < ActiveJob::Base
  def perform
    Rake::Task['sitemap:generate'].invoke
    Rake::Task['sitemap:ping'].invoke
  end
end
