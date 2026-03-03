require "active_support/core_ext/integer/time"

Rails.application.configure do
  # ===============================
  # Général
  # ===============================
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # ===============================
  # SSL / Scalingo
  # ===============================
  config.force_ssl = true
  config.assume_ssl = true

  # ===============================
  # Fichiers statiques
  # ===============================
  config.public_file_server.enabled = true

  # ===============================
  # Assets
  # ===============================
  config.assets.compile = false
  config.assets.digest  = true
  config.assets.js_compressor  = :terser
  config.assets.css_compressor = :sassc
  config.assets.raise_runtime_errors = true

  # ===============================
  # Active Storage
  # ===============================
  config.active_storage.service = :local

  # ===============================
  # Logs
  # ===============================
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  config.log_tags = [:request_id]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # ===============================
  # Mailer
  # ===============================
  config.action_mailer.perform_caching = false
  config.consider_all_requests_local = true

  # IMPORTANT : nécessaire pour générer les URLs dans les emails
  config.action_mailer.default_url_options = {
    host: "www.lentredeuxpommes.fr",
    protocol: "https"
  }

  # Configuration SMTP Gmail
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    domain:               "gmail.com",
    user_name:            ENV["GMAIL_USERNAME"],
    password:             ENV["GMAIL_PASSWORD"],
    authentication:       "plain",
    enable_starttls_auto: true
  }

  # ===============================
  # I18n
  # ===============================
  config.i18n.fallbacks = true

  # ===============================
  # Active Support / Active Record
  # ===============================
  config.active_support.report_deprecations = false
  config.active_record.dump_schema_after_migration = false
  config.active_record.attributes_for_inspect = [:id]
end
