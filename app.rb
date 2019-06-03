require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    'A bookmark'
  end

  run! if app_file == $0

end