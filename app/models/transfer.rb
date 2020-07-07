class Transfer < ApplicationRecord
  belongs_to :sender, class_name: 'Account'
  belongs_to :receiver, class_name: 'Account'

  def start_transfer(amount)
    if self.pending? == true
      sender.balance -= amount
      receiver.balance += amount
    else
      return "This transfer has been completed."
    end  
  end
end
