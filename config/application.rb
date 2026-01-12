require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GiteHuart
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Autoload lib/, ignore non-Ruby folders
    config.autoload_lib(ignore: %w[assets tasks])

    # Time zone (recommandé)
    config.time_zone = "Paris"
    config.active_record.default_timezone = :local

    # i18n (optionnel mais propre)
    config.i18n.available_locales = [:en, :fr]
    config.i18n.default_locale = :fr
  end
end
