require 'watir'
require 'webdrivers/chromedriver'
require_relative "../pages/site"
require 'rspec/expectations'
include RSpec::Matchers

$messages = YAML.load_file('./features/config/messages.yml')


module SiteHelper
  def site
    @site ||= (
    Site.new(Watir::Browser.new(:chrome, headless: false))
    )
  end
end

World(SiteHelper)
