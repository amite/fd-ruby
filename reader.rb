require 'rubygems'
require 'bundler'
require "money"

require 'yaml'

class Reader
  def initialize

  end
end

profile = YAML.load_file('data.yaml')

principal_amount = profile[0]['initial_amount']

currency = Money.new(3_00_000, "INR").currency

p currency.subunit

