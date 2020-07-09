class RemoveUsernameAndPasswordFromBanks < ActiveRecord::Migration[6.0]
  def change
    remove_column :banks, :username
    remove_column :banks, :password_digest
  end
end
