# config valid only for current version of Capistrano
lock '3.16.0'

set :repo_url,        "git@github.com:footvote/foot.vote.git"
set :repo_tree,       "footvote-backend"
set :application,     "footvote"
set :user,            "deploy"
set :deploy_to,       "/home/ubuntu/footvote"
set :keep_releases,   5
set :puma_enable_socket_service, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/master.key", "config/credentials/production.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/uploads"
