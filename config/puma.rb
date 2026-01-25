# frozen_string_literal: true

max_threads_count = ENV.fetch("RAILS_MAX_THREADS", 5)
min_threads_count = ENV.fetch("RAILS_MIN_THREADS", max_threads_count)

threads min_threads_count, max_threads_count

# Scalingo fournit le port via la variable PORT
port ENV.fetch("PORT", 3000)

environment ENV.fetch("RAILS_ENV", "development")

# Workers (désactivé par défaut sur Scalingo)
workers ENV.fetch("WEB_CONCURRENCY", 1)

preload_app!

# Permet `rails restart`
plugin :tmp_restart
