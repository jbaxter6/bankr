class Loan < ApplicationRecord
  belongs_to :lending_bank
  belongs_to :loan_receiver
end
