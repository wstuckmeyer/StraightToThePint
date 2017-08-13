require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'

set :database , 'sqlite3:keg.sqlite3'
enable :sessions

require './models'


get '/' do
	erb :home
end

get '/sign-up' do
	erb :signUp
end

get '/profile/:id' do
	@user = User.find(session[:user_id])
	@title = Post.where(title: params[:title])
	@content = Post.where(content: params[:content])
	@post = Post.where(user_id: session[:user_id])
	@reverse = @post.reverse
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

post '/profile/:id' do 
	@newpost = Post.create(title: params[:title], content: params[:content], user_id: session[:user_id])
	@user = session[:user_id]
	redirect 'profile/' + @user.to_s
	
	erb :show

end

