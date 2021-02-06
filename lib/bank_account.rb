class BankAccount
    attr_accessor :account, :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @account = account
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit_amount)
        @balance += deposit_amount
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        self.status == "open" && self.balance > 0 ? true : false
    end

    def close_account
        self.status = "closed"
    end

end
