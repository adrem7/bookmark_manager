# frozen_string_literal: true

describe Bookmark do
  it '#all displays array of bookmarks' do
    expect(Bookmark.all).to include('https://www.infowars.com')
    expect(Bookmark.all).to include('https://www.facebook.com')
    expect(Bookmark.all).to include('https://www.google.com')
  end
end
