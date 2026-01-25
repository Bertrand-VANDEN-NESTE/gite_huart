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
  # Scalingo termine le SSL avant Puma
  config.force_ssl = true
  config.assume_ssl = true

  # ===============================
  # Fichiers statiques
  # ===============================
  # Permet à Rails de servir les fichiers statiques depuis /public
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present? || true

  # ===============================
  # Assets
  # ===============================
  # Compilation à la volée si un asset manque
  config.assets.compile = false # Désactivé pour prod, assets précompilés
  config.assets.digest  = true
  config.assets.js_compressor  = :terser
  config.assets.css_compressor = :sassc

  # Affiche une erreur si un asset est manquant
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
