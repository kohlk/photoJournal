# app.rb

# use bundler
require 'rubygems'
require 'bundler/setup'
# load all of the gems in the gemfile
Bundler.require

imgurClient = Imgur.new '5acc7208e8fa6fb' # my dev API key

get '/' do
    erb :index
    img = Imgur::LocalImage.new('/Users/kohlkinning/Pictures/Misc/stallman.jpg', title: 'He Who Must Be Cited')
    img2 = Imgur::LocalImage.new('/Users/kohlkinning/Pictures/Misc/pug.jpg', title: 'PUG')
    uploaded = imgurClient.upload(img)
    puts "uploaded: #{uploaded.link}"
    "<img src='#{uploaded.link}' /><p>Uploaded to #{uploaded.link}</p>"
    # album = client.new_album(uploaded, title: 'My Photography')
end
