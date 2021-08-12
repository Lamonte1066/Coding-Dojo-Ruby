require_relative 'bankaccount'

RSpec.describe BankAccount do
    before(:each) do
        @bankacct1 = BankAccount.new
    end

    it 'has a getter and setter for retrieving the checking account balance' do
        expect(@bankacct1.checking_balance).to eq (0)
    end

    it 'has a getter method that retrieves the total account balance' do
        expect(@bankacct1.total_amount).to eq (0)
    end

    it 'cannot withdraw more money than in the account' do
        expect(@bankacct1.withdraw_checking(100)).to be_invalid
    end

    it 'has a method that withdraws cash' do
        expect{@bankacct1.withdraw_checking('checking',500)}.to raise_error(RuntimeError, "Not enough in your account")
    end
    it 'has a method that deposits to checking' do
        expect{@bankacct1.deposit_checking(235)}.to eq (235)
    end
end