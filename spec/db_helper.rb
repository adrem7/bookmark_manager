def trauncate_test_db

connection = PG.connect :dbname => 'bookmark_manager_test', :user => 'bookmark'
      
response = connection.exec "TRAUNCATE bookmark"

end