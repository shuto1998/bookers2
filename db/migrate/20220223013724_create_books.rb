class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :opinion
      t.string :book_name
      t.integer :user_id
      t.timestamps
    end
  end
end
