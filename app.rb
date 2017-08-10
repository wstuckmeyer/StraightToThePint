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

get '/profile/' do
	erb :profile
end