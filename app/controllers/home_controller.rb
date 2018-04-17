class HomeController < ApplicationController
  def index
    @books = Book.all
    @bookshelves = User.with_books
  end
end
