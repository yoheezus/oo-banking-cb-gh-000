class Transfer
  # your code here

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, reciever, amount)
      @sender = sender
      @receiver = reciever
      @amount = amount
      @status = "pending"
  end

  def valid?
      self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
      @amt_transferred = 0
      if valid? && self.status == "pending"
          self.sender.balance =- amount
          self.receiver.balance =+ amount
          @amt_transferred = amount
          self.status = "done"
      else
          "Transaction rejected. Please check your account balance."
      end
  end


end
