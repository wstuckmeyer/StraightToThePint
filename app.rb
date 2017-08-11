require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'

set :database , 'sqlite3:keg.sqlite3'
enable :sessions

require './models'

def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

get '/' do
	erb :home
end

get '/sign-up' do
	erb :signUp
end

get '/profile/:id' do
	@user = User.find(params[:id])
	erb :show
end



post '/sign-up' do
	@newUser = User.create(username: params[:username], password: params[:password])
	if @newUser == User.where(username: params[:username])
		redirect '/'
	else
		@user = User.where(username: params[:username]).first
		session[:user_id] = @user.id
		redirect '/profile/' + @user.id.to_s
  end
end

post '/' do
	@user = User.where(username: params[:username]).first
	if @user == nil
		redirect '/sign-up'
	elsif @user.password == params[:password]

		session[:user_id] = @user.id
		redirect '/profile/' + @user.id.to_s
	else
		redirect '/'
	end
end

