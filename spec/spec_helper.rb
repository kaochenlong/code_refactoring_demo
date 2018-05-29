require 'factory_bot'
require 'faker'

require_relative '../lib/customer'
require_relative '../lib/movie'
require_relative '../lib/rental'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # factory bot settings
  config.include FactoryBot::Syntax::Methods
  config.before do
    FactoryBot.reload
  end
end
