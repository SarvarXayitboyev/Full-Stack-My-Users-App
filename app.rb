require 'sinatra'
require './my_user_model'

user = User.new('db.sql')

get '/users' do
  content_type :json
  user.all.to_json
end

post '/users' do
  user_info = [params['firstname'], params['lastname'], params['age'], params['password'], params['email']]
  user_id = user.create(user_info)
  user_info.delete_at(3) # Remove password from response
  status 201
  user.find(user_id).to_json
end

# Define other routes here

get '/' do
  @users = user.all
  erb :index
end
