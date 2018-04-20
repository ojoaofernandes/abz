class HomeController < ApplicationController
  def index
    @books = Book.all
    @title = "All books"
    @books = @books.where(user_id: params[:user_id]) unless params[:user_id].blank?
    @title = User.find(params[:user_id]).name unless params[:user_id].blank?
    @bookshelves = User.with_books
  end
end
