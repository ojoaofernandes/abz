class HomeController < ApplicationController
  def index
    @bookshelves = User.all_with_books_ordered
  end
end
