class AddNotesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :notes, :string
    add_column :books, :author_id, :integer 
    remove_column :books, :author_name, :string
  end
end
