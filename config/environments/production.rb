require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Rails est derrière le proxy SSL de Scalingo
  config.assume_ssl = true

  # Forcer HTTPS
  config.force_ssl = true

  # Servir les fichiers statiques (CSS, JS, images)
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
