class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = 'open'
    end

    def deposit(amount)
        @balance += amount 
    end

    def display_balance
        return "Your balance is $#{self.balance}."
    end

    def valid?
        return self.status == 'open' && self.balance > 0
    end

    def close_account
        self.status = 'closed'
    end

end
