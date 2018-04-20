require "csv"

CSV.foreach("/home/uesley/Downloads/livros_db.csv") do |row|
    @book = new Book()
    
end