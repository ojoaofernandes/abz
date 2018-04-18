class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :booking_id
      t.datetime :loan_date
      t.datetime :return_at
      t.datetime :returned_at

      t.timestamps
    end
  end
end
