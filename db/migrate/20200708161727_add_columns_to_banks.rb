class AddColumnsToBanks < ActiveRecord::Migration[6.0]
  def change
    add_column :banks, :location, :string
    add_column :banks, :username, :string
    add_column :banks, :password_digest, :string
  end
end
