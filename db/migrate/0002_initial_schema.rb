class InitialSchema < ActiveRecord::Migration
  def change

    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end

    create_table :comments do |t| 
      t.text :body
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
    end

    add_reference :posts, :user, index: true        
    add_reference :posts, :category, index: true
    add_reference :comments, :post, index: true
    add_reference :comments, :user, index: true
  end
end