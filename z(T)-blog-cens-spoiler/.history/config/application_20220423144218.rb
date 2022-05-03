require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
	  config.time_zone = "Santiago"
    # config.eager_load_paths << Rails.root.join("extras")

    # Rails Internationalization (I18n) - How to translate & localize your app [https://www.youtube.com/watch?v=lCyP8uKRqQo]

    config.i18n.available_locales = [:en, :es]
    config.i18n.default_locale = :es
    config.i18n.
  end
end
