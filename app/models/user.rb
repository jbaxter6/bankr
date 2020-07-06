class User < ApplicationRecord
  has_many :acccounts
  has_many :banks, through: :accounts
end
