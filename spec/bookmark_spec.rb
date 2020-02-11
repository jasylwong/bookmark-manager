require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include "https://github.com/jasylwong/"
      expect(bookmarks).to include "https://medium.com/"
      expect(bookmarks).to include "https://www.google.co.uk/"
    end
  end
end