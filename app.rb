require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks/delete' do
    @bookmarks = Bookmark.all
    erb :"bookmarks/delete"
  end

  post '/bookmarks/delete' do
    Bookmark.delete(url: params[:delete])
    redirect '/bookmarks'
  end
end
