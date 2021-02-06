class Transfer
  attr_accessor :transfer, :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid? && self.status == "pending" && sender.balance > amount
  end

  def execute_transaction
    if self.valid?
      receiver.balance += amount
      sender.balance -= amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.status == "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    end
  end

end
