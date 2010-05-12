$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'jungle_drums'

require 'spec/expectations'
require File.expand_path(File.dirname(__FILE__) + "../../../spec/blueprints")

require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation

require 'capybara/cucumber'
Capybara.app = Sinatra::Application

require 'feed_me'


