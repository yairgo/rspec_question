# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec'


RSpec.configure do |config|  
  config.mock_with :rspec
  config.include RSpec::Matchers
end
