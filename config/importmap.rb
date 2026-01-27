# Pin application code
pin "application"

# Pin Hotwired
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true

# Pin controllers
pin_all_from "app/javascript/controllers", under: "controllers"

# Pin Flatpickr
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js"
