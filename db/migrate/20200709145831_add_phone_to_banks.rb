class AddPhoneToBanks < ActiveRecord::Migration[6.0]
  def change
    add_column :banks, :phone, :string
  end
end
