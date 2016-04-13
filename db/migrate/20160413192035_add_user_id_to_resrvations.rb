class AddUserIdToResrvations < ActiveRecord::Migration
  def change
    add_column :reservations, :user_id, :string
    add_column :reservations, :due_on, :datetime
    add_column :reservations, :returned_at, :datetime
    remove_column :reservations, :due_date, :datetime
    remove_column :reservations, :returned_date, :datetime 
  end
end
