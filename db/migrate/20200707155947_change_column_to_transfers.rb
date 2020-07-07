class ChangeColumnToTransfers < ActiveRecord::Migration[6.0]
  def change
    change_column :transfers, :pending?, :boolean, :default => true
  end
end
