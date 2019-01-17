class BankAccount

    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance + amount
    end

    def display_balance
        @balance
    end

end
