module BooksHelper
  def link_to_booking book
    text = "Request booking"
    clazz = "btn btn-success"

    if book.quantity_available == 0
      text   = "Unavailable"
      clazz += " disabled"
    end

    link_to text, bookings_create_url({booking:{book_id: @book.id}}), method: :post, class: clazz
  end
end
