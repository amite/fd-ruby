require 'yaml'

class Reader
  def initialize

  end
end

profile = YAML.load_file('data.yaml')

principal_amount = profile[0]['initial_amount']

