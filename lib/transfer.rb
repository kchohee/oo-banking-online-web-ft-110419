class Transfer
<<<<<<< HEAD
  attr_accessor :amount, :status, :sender, :receiver
  def initialize(sender, receiver,amount)
    self.sender = sender
    self.receiver = receiver
    self.amount = amount
    self.status = 'pending'
  end
  def valid?
    return self.receiver.valid? && self.sender.valid?
  end
  def execute_transaction
    if self.status == "pending"
      self.sender.deposit(-1*self.amount)
      if self.valid?
        self.receiver.deposit(self.amount)
        self.status = "complete"
      else
        self.sender.deposit(self.amount)
        self.status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end
  end
  def reverse_transfer
    if self.status == "complete"
      self.sender.deposit(self.amount)
      self.receiver.deposit(-1*self.amount)
      self.status = "reversed"
    end
=======
  attr_accessor :amount, :status, :sender, :receiever
  def initialize(sender, receiever,amount)
    self.sender = sender
    self.receiever = receiever
    self.amount = amount
>>>>>>> 5d76f5d620dc5f9cf72af5fd27e3c43536795acb
  end
end
