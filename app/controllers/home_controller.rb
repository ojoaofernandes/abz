class HomeController < ApplicationController
  def index
    @books = Book.all
    @bookshelves = User.all_with_books_ordered
  end
end
