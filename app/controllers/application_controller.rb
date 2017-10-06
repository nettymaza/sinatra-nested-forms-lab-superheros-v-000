require 'sinatra/base'
require 'awesome_print'

require_relative '../models/super_hero'
require_relative '../models/team'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    erb :team
  end

end
