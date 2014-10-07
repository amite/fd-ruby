require "rspec"
require "factory_girl"
require "money"

require_relative '../lib/investment'

require 'yaml'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end