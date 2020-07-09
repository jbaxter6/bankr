class Account < ApplicationRecord
  belongs_to :bank
  belongs_to :user
  has_many :loans
  has_many :lending_banks, through: :loans, source: 'Bank'

  has_many :received_transfers, foreign_key: :receiver_id, class_name: 'Transfer'
  has_many :receivers, through: :received_transfers

  has_many :sent_transfers, foreign_key: :sender_id, class_name: 'Transfer'
  has_many :senders, through: :sent_transfers


  def username
    User.find(self.user_id).username
  end

  def self.get_all_users_with_banks
    accounts = Account.all
    usernames_and_banks = accounts.map do |account|
      User.find(account.user_id).username + " - " + Bank.find(account.bank_id).name
    end
    usernames_and_banks
  end

end

