class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? && @receiver.valid?     #checks that both accounts are valid
      return true                             #valid? method is boolean, checks for errors on an object
    else                                      #essentially checks if an these objects exist
      return false
    end
  end

  def execute_transaction       #executes a successful transaction between two accounts
    if @sender.balance > @amount && @status == "pending"      #here @sender instance var is receiver of BankAccount balance method (attr_accessor) 
      @sender.balance -= @amount
      @receiver.balance




      return "Transaction rejected. Please check your account balance."
    end
  end
end
