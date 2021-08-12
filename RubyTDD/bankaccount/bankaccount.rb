class BankAccount
    @@num_of_accounts = 0
	def initialize
		account_number
		@checking = 0
		@savings = 0
		@interest_rate = 0.01
	end

	def ret_account_number
		puts @account_number
		self
	end

	def checking_balance
		puts @checking
		self
	end

	def savings_balance
		puts @savings
		self
	end

	def deposit_checking(amt)
		@checking += amt
		self
	end

    	def deposit_savings(amt)
		@savings += amt
		self
	end

	def withdraw_checking(amt)
		if @checking < amt
			puts "Insufficient funds for checking account"
        else
			@checking -= amt
        end
        self
    end

	def withdraw_savings(amt)
		if @savings < amt
			puts "Insufficient funds for savings account"
        else
			@savings -= amt
        end
        self
    end

	def total_amount
		puts @savings + @checking
		self
	end

	def account_information
		puts " Account Number: #{@account_number}. Total Money: #{@checking + @savings}. Checking Account Balance: #{@checking} .  Savings Account Balance: #{@savings}. Interest rate: #{@interest_rate}"
		self
	end

	private
		def account_number
			@account_number = rand(100000..999999)
		end
end

