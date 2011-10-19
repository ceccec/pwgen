require 'sinatra'
require 'securerandom'

configure :production do
  require 'rack-ssl-enforcer'
  use Rack::SslEnforcer
end

get '/' do
  erb :index
end