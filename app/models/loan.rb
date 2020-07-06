class Loan < ApplicationRecord
  belongs_to :bank
  belongs_to :account
end
