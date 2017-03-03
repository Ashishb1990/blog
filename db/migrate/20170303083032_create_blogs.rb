class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.references :category, index: true, foreign_key: true
      t.string :title
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
