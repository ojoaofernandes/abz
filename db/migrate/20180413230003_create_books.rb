class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :pages
      t.integer :quantity
      t.string :language
      t.integer :discipline_id

      t.timestamps
    end
  end
end
