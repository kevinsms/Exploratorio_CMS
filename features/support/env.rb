require 'capybara/cucumber'
require 'selenium-webdriver'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__)+"/ambientes/#{AMBIENTE}.yml")

World(PageObjects)
World(Helper)

Capybara.configure do |config|
    
    config.default_driver = :selenium_chrome_headless
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
    

end
