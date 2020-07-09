class Loan < ApplicationRecord
  belongs_to :bank
  belongs_to :account

  def fulfill_loan
    self.account.update(balance: self.account.balance + self.amount)
  end
end
