require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'

set :database , 'sqlite3:keg.sqlite3'

require './models'

get '/' do
	erb :home
end

get '/sign-up' do
	erb :signUp
end

get '/profile' do
	
	erb :profile
end


post '/sign-up' do
	@newUser = User.create(username: params[:username], password: params[:password])
	if @newUser == User.where(username: params[:username])
		redirect '/'
	else
		#this might not be neccearily correct.
		redirect '/profile'
  end
end

post '/' do
	@user = User.where(username: params[:username]).first
	if @user == nil
		redirect '/sign-up'
	elsif @user.password == params[:password]
		redirect '/profile'
	else
		redirect '/'
	end
end
