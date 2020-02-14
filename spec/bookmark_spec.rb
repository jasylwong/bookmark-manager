require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC')
      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.url).to eq 'http://www.bbc.co.uk'
      expect(bookmark.title).to eq 'BBC'
    end
  end

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end
end
