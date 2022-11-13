# frozen_string_literal: true

server '145.239.82.55', user: 'ubuntu', roles: %i[web app db], primary: true

set :ssh_options, keys: %w[~/.ssh/id_rsa], forward_agent: true, auth_methods: %w[publickey]
set :rails_env, 'production'
set :branch, ENV['BRANCH'] || 'master'
