describe Transaction do 
	context "valid account number with fixnum" do
		before { @transaction = Transaction.new(credit_account: 1234, debit_account:1234, amount:100, time: Time.new) }	

		it "verifies valid account numbers are fixnums" do
			expect(@transaction.valid_account_number?(@transaction.credit_account || @transaction.debit_account)).to eql(true)
		end

		it "verifies amount number is a fixnum" do 
			expect(@transaction.valid_amount?(@transaction.amount)).to eql(true)
		end

		it "verifies time is valid" do
			expect(@transaction.valid_time?(@transaction.time)).to eql(true)
		end

		it "should change amount to currency format" do
			expect(@transaction.amount_to_currency).to eql("$1.00")
		end

		it "should change time to pretty time format" do
			expect(@transaction.time).to eql('2015-10-05 17:58:44.698503000 -0400')
		end		

	end

	context "account number is not a fixnum" do
		let(:transaction) { @transaction = Transaction.new(credit_account: "hello", debit_account:"bad", amount:100, time: 234) }			

		it "notifies user that account number is incorrect format" do
			expect{transaction.valid_account_number?(transaction.credit_account||transaction.debit_account||transaction.time)}.to raise_error("Account number must be of type integer.")
		end

	end


end