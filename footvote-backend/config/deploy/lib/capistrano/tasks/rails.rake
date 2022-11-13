# frozen_string_literal: true

namespace :rails do # rubocop:disable Metrics/BlockLength
  desc 'Open rails console on remote server'
  task console: :environment do
    on primary(:app) do |host|
      run_interactively "bundle exec bin/rails console -e #{fetch(:rails_env)}", host
    end
  end

  desc 'Open rails dbconsole on remote server'
  task dbconsole: :environment do
    on primary(:app) do |host|
      run_interactively "bundle exec rails dbconsole #{fetch(:rails_env)}", host
    end
  end

  desc "Run a task on a remote server; example cap staging rails:rake task=some:task args='some=arguments'"
  task rake: :environment do
    on primary(:app) do |host|
      run_interactively("bundle exec rake #{ENV['task']} #{ENV['args']} RAILS_ENV=#{fetch(:rails_env)}", host)
    end
  end

  def run_interactively(command, host)
    info "Running `#{command}` as #{host.user}@#{host.hostname}"
    exec %(ssh #{ssh_login_options} #{host.user}@#{host.hostname} -t "bash -l -c 'cd #{current_path} && #{command}'")
  end

  def ssh_login_options
    identity_file = fetch(:ssh_options)[:keys].first
    "-i #{identity_file} -C -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
  end
end
