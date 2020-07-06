class Bank < ApplicationRecord
  has_many :accounts
  has_many :loans
  has_many :loan_receivers, through: :loans, source: 'Account'
  has_many :users, through: :accounts
end
