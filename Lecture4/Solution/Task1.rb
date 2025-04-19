class BankAccount
    attr_reader :accountNumber, :ownerName, :balance, :transactions
  
    def initialize(accountNumber, ownerName, initialBalance = 0)
      @accountNumber = accountNumber
      @ownerName = ownerName
      @transactions = []
  
      if initialBalance < 0
        raise ArgumentError, "Initial balance cannot be negative"
      end
      @balance = initialBalance
      log_transaction("Account opened", initialBalance)
    end
  
    def deposit(amount)
      begin
        if amount <= 0
          raise ArgumentError, "Deposit amount must be positive"
        end
        @balance += amount
        log_transaction("Deposit", amount)
      rescue ArgumentError => e
        puts "Error: #{e.message}"
      end
    end
  
    def withdraw(amount)
      begin
        if amount <= 0
          raise ArgumentError, "Withdrawal amount must be positive"
        end
        if @balance < amount
          raise ArgumentError, "Insufficient funds for withdrawal"
        end
        @balance -= amount
        log_transaction("Withdrawal", -amount)
      rescue ArgumentError => e
        puts "Error: #{e.message}"
      end
    end
  
    def getBalance
      @balance
    end
  
    def getStatement
      puts "Statement for account #{@accountNumber} (#{@ownerName})"
      puts "Current balance: $#{@balance}"
      puts "Transaction history:"
      puts "---------------------"
      @transactions.each do |transaction|
        puts "#{transaction[:type]}: $#{transaction[:amount].abs} (#{transaction[:timestamp]})"
      end
      puts "---------------------"
    end
  
    def self.transfer(sourceAccount, targetAccount, amount)
      begin
        if amount <= 0
          raise ArgumentError, "Transfer amount must be positive"
        end
        if sourceAccount.balance < amount
          raise ArgumentError, "Insufficient funds for transfer"
        end
  
        sourceAccount.withdraw(amount)
        targetAccount.deposit(amount)
        puts "Transfer of $#{amount} from account #{sourceAccount.accountNumber} to #{targetAccount.accountNumber} completed successfully"
      rescue ArgumentError => e
        puts "Transfer failed: #{e.message}"
      end
    end
  
    private
  
    def log_transaction(type, amount)
      @transactions << {
        type: type,
        amount: amount,
        timestamp: Time.now.strftime("%Y-%m-%d %H:%M:%S")
      }
    end
end



account1 = BankAccount.new("123456", "Alice", 1000)
account2 = BankAccount.new("789012", "Bob", 500)


account1.deposit(200)
account1.withdraw(100)
account1.withdraw(2000) 
account1.deposit(-50)   

BankAccount.transfer(account1, account2, 300)
BankAccount.transfer(account1, account2, 2000) 

account1.getStatement
account2.getStatement