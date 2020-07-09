class ChangePendingColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :transfers, :pending?, :pending
  end
end
