require 'watir'
require 'webdrivers/chromedriver'
require_relative "../pages/site"

module SiteHelper
  def site
    @site ||= (
    Site.new(Watir::Browser.new(:chrome, headless: false))
    )
  end
end

World(SiteHelper)
