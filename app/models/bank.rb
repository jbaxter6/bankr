class Bank < ApplicationRecord
  has_many :accounts
  has_many :loans
  has_many :loan_receivers, through: :loans, source: 'Account'
  has_many :users, through: :accounts

  validates :name, {presence: true, uniqueness: true}
  validates :location, {presence: true, uniqueness: true}
  validates :username, {presence: true, uniqueness: true}
  validates :password, {presence: true, length: { in: 6..20 }}

  has_secure_password
end
