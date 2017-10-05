class AddUsernameToOwners < ActiveRecord::Migration[5.1]
  def change
    add_column :owners, :username, :string
  end
end
