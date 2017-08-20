require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  haml :index
end

get '/version' do
  "Current verion: 3"
end
