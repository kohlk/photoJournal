require 'rubygems'
require 'bundler/setup'

Bundler.require

require './models/ImageThing'
require './models/User'

imgurClient = Imgur.new '5acc7208e8fa6fb' # my dev API key

if ENV['DATABASE_URL']
    ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
else
    ActiveRecord::Base.establish_connection(
        :adapter  => 'sqlite3',
        :database => 'db/development.db',
        :encoding => 'utf8'
    )
end

get '/' do
    @users = User.all.order(:name)
    erb :userList
end

get '/:user' do
    @user = User.find(params[:user])
    @imageys = @user.image_things.order(:due)  #image_things replaced todo_items
    erb :todoList
end

post '/new_user' do
    @user = User.create(params)
        redirect '/'
end

get '/delete_user/:user' do
    User.find(params[:user]).destroy
        redirect '/'
end

post '/:user/new_item' do
    User.find(params[:user]).image_things.create(description: params[:imagey], due: params[:date], path: params[:path])
        redirect "/#{params[:user]}"
end

get '/delete_item/:item' do
    @image_thing = ImageThing.find(params[:item])
    @user = @image_thing.user
    @image_thing.destroy
    redirect "/#{@user.id}"
end

helpers do
    def blank?(x)
    x.nil? || x == ""
    end
end

#todo_items is image_things
#todo_item is image_thing
#task is imagey
#tasks is imageys
#TodoItem is Image (i.e. the model)
