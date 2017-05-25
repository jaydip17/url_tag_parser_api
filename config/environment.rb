# Load the Rails application.
require_relative 'application'

::ActiveSupport::Deprecation.silenced = true if Rails.env.test?


# Initialize the Rails application.
Rails.application.initialize!
