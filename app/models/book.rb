class Book < ActiveRecord::Base
  belongs_to :discipline
  belongs_to :user
  has_many :bookings
  mount_uploader :image, ImageUploader
  validates_presence_of :title, :author

  def quantity_available
    loans = Loan.joins(:booking).where(bookings: { book_id: self.id }, returned_at: nil).count
    self.quantity - loans
  end
end
