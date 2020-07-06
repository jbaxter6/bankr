class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.integer :bank_id
      t.integer :account_id
      t.decimal :interest_rate
      t.decimal :amount

      t.timestamps
    end
  end
end
