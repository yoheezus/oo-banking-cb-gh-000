class Transfer
  # your code here

  attr_accessor :sender, :reciever, :amount

  def initialize(sender, reciever, amount)
      @sender = sender
      @reciever = reciever
      @amount = amount
      @status = "pending"
  end
end
