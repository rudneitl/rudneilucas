require 'factory_girl'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # factory girl
  config.include FactoryGirl::Syntax::Methods
end
