require_relative 'boot'
require 'csv'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Prueba
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'America/Santiago'
 		config.active_record.default_timezone = :local # Or :utc
    config.i18n.enforce_available_locales = true
	  config.i18n.available_locales = [:es]
	  config.i18n.default_locale = :es
  end
end
