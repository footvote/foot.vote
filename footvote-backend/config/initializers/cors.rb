# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins Rails.application.credentials.site_url

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end

  allow do
    origins Rails.application.credentials.api_url

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end

  allow do
    origins %r{https://([a-zA-Z\d-]+--)?footvote.netlify.app}

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end
end
