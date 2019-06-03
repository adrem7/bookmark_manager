# frozen_string_literal: true

require 'pg'
require 'pry-byebug'
class Bookmark
  def self.all

    begin
      connection = PG.connect :dbname => 'bookmark_manager', :user => 'bookmark'
      
      response = connection.exec "SELECT * FROM bookmarks LIMIT 5"
      response.map { |bookmark| bookmark['url'] }

    rescue PG::Error => error
      puts error.message 
    ensure   
      connection.close if connection
    end
  end
end
