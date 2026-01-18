# config/puma.rb

# Nombre de threads
max_threads_count = ENV.fetch("RAILS_MAX_THREADS", 5)
min_threads_count = ENV.fetch("RAILS_MIN_THREADS", max_threads_count)
threads min_threads_count, max_threads_count

# Port et environnement
port ENV.fetch("PORT") { 3000 }           # Local ou Scalingo
environment ENV.fetch("RAILS_ENV") { "development" }

# Plugin pour le redémarrage avec `rails restart`
plugin :tmp_restart
