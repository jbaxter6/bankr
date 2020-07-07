class AddBalanceToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :balance, :decimal
  end
end
