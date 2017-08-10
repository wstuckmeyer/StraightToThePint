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

post '/' do
	@user = User.where(username: params[:username]).first
	if @user.password == params[:password]
		redirect '/profile'
	else
		redirect '/'
	end
	
end