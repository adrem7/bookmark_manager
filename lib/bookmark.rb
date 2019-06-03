# frozen_string_literal: true

require 'pg'
class Bookmark
  def self.all


    begin
        connection = PG.connect :dbname => 'bookmark_manager', :user => 'bookmark'
        
        response = connection.exec "SELECT * FROM bookmarks LIMIT 5"
    
        response.each do |row|
          puts "%s %s" % [ row['id'], row['url']]
        end
        
    rescue PG::Error => error
    
        puts error.message 
        
    ensure
    
        response.clear if response
        connection.close if connection
        
    end
  end
end
