class User < ApplicationRecord
  has_many :accounts
  has_many :banks, through: :accounts
end
