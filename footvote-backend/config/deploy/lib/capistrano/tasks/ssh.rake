# frozen_string_literal: true

desc 'Open SSH connection to server'
task ssh: :environment do
  on primary(:app) do |host|
    identity_file = fetch(:ssh_options)[:keys].first
    ssh_login_options = "-i #{identity_file} -C -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

    exec "ssh #{ssh_login_options} #{host.user}@#{host.hostname}"
  end
end
