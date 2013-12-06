require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/json'
require 'json'

Sinatra::register Gon::Sinatra

module Mahjong
  class App < Sinatra::Base
    register ::Gon::Sinatra

    configure do
      register Sinatra::Reloader
      enable :sessions

      Log = ::Logger.new("logs/#{Date.today.to_s}.log")
      Log.level = ::Logger::DEBUG
    end

    get '/' do
      slim :index
    end
  end
end
