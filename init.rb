require 'sinatra'
require 'securerandom'

configure :production do
  require 'rack-ssl-enforcer'
  use Rack::SslEnforcer
end

get '/' do
  erb :index
end

# used by Canvas apps - redirect the POST to be a regular GET
post "/" do
  redirect "/"
end

# used to close the browser window opened to post to wall/send to friends
get "/close" do
  "<body onload='window.close();'/>"
end