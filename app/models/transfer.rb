class Transfer < ApplicationRecord
  belongs_to :sender, class_name: 'Account'
  belongs_to :receiver, class_name: 'Account'

  def start_transfer(amount)
    if self.pending? == true
      byebug
      sender.balance -= amount
      receiver.balance += amount
    else
      return "This transfer has been completed."
    end  
  end

  def self.get_recipients(sender_id)
    sender_transfers = self.where(sender_id: sender_id)
    sender_receivers = sender_transfers.map do |transfer|
      transfer.receiver
    end
    sender_receivers
  end

  def self.get_recipient_names(sender_id)
    self.get_recipients(sender_id).map {|recipient| recipient.user.username}
  end
end
