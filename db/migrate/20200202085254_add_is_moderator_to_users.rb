class AddIsModeratorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_moderator, :boolean, default: false
  end
end
