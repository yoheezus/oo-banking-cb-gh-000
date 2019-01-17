class Transfer
  # your code here

  attr_accessor :sender, :reciever, :amount, :status

  def initialize(sender, reciever, amount)
      @sender = sender
      @reciever = reciever
      @amount = amount
      @status = "pending"
  end

  def valid?
      self.sender.valid? && self.reciever.valid?
  end

end
