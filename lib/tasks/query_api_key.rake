# encoding: utf-8

namespace :user do
  desc 'Get the API key from a username'
  task :query_api_key, [:username] => [:environment] do |task, args|
    user = User.where(username: args[:username]).first
    puts user.get_map_key
  end
end

