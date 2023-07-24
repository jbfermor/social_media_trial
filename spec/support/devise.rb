require_relative "./controller_macros"

RSpec.configure do |config|
  config.include Devise::Test::IntegrationHelpers
  config.extend ControllerMacros
end