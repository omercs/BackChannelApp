class AddAdminFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :AdminFlag, :boolean
  end
end
