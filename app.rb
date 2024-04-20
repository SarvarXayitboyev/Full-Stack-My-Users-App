require 'sinatra'
require 'json'
require './my_user_model'

enable :sessions

user = User.new

get '/users' do
  content_type :json
  users = user.all.map { |u| u.reject { |k, _| k == :password } }
  users.to_json
end

post '/users' do
  user_info = {
    firstname: params[:firstname],
    lastname: params[:lastname],
    age: params[:age],
    password: params[:password],
    email: params[:email]
  }
  user_id = user.create(user_info)
  created_user = user.find(user_id).reject { |k, _| k == :password }
  created_user.to_json
end

post '/sign_in' do
end

put '/users' do
end

delete '/sign_out' do
  status 204
end

delete '/users' do
  status 204
end

get '/' do
  content_type 'text/html'
  File.read(File.join('views', 'index.html'))
end
