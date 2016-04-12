class AddAuthorNameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author_name, :string
  end
end
