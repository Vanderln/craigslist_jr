class CreatePosts < ActiveRecord::Migration
  def change

    create_table :posts do |t|
      t.integer :category_id
      t.string :edit_key
      t.string  :title
      t.string  :email
      t.string  :description
      t.decimal :price, :precision => 10, :scale => 2
      
      t.timestamps
    end
  end
end

