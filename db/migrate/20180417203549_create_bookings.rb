class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :booked_at
      t.datetime :booked_until
    end
  end
end
