require_relative "./controller_macros"

RSpec.configure do |config|
  config.include Devise::Test::IntegrationHelpers , :type => :system
  config.extend ControllerMacros, :type => :system
end