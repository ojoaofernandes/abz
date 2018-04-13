json.extract! book, :id, :title, :author, :publisher, :pages, :quantity, :classification, :language, :discipline_id, :created_at, :updated_at
json.url book_url(book, format: :json)
