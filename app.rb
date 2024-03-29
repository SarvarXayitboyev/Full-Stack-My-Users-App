require 'sinatra'
require_relative 'my_user_model'

set :bind, '0.0.0.0'
set :port, 8080

user = User.new

get '/users' do
end

post '/users' do
end

post '/sign_in' do
end

put '/users' do
end

delete '/sign_out' do
end

delete '/users' do
end

get '/' do
end
