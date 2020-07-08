class User < ApplicationRecord
  has_many :accounts
  has_many :banks, through: :accounts

  validates :username, {presence: true, uniqueness: true}
  validates :password, {presence: true, length: { in: 6..20 }}
  
  has_secure_password

end
