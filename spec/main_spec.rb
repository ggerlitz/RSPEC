describe Article do
	before{ 
  @article = Article.new(title: "Blahblah", body:"Body", author:"Qauthor")
 }
	 it "should use title as value," do

	 	expect(@article.title?).to eq(true)
	 
	end


	it "should use body  as value " do

		expect(@article.body?).to eq(true)
	end


	it "should check for empty string " do

		expect(@article.string_empty?("testing")).not_to eq("" || nil)
	end


	it "should downcase author name that start with q" do

		expect(@article.authors_name_starts_with_q?).to eq(true)
	end

	it "should show title as an html element" do

		expect(@article.title_as_html).to eq("<h1>Blahblah</h1>")
	end

	it "should show author as an html element" do

		expect(@article.author_as_html).to eq("<b>Qauthor</b>")
	end

	it "should show body as an html element" do

		expect(@article.body_as_html).to eq("<p>Body</p>")
	end


	it "should show article as an html element" do

		expect(@article.article_as_html).to eq("<h1>Blahblah</h1>" + "<b>Qauthor</b>" + "<p>Body</p>")

	end
end


		# ------------------   TRANSACTION PART ---------------------




# describe Transaction do 
# 	context "valid account number with fixnum" do
# 		before { @transaction = Transaction.new(credit_account: 1234, debit_account:1234, amount:100, time: Time.new) }	

# 		it "verifies valid account numbers are fixnums" do
# 			expect(@transaction.valid_account_number?(@transaction.credit_account || @transaction.debit_account)).to eql(true)
# 		end

# 		it "verifies amount number is a fixnum" do 
# 			expect(@transaction.valid_amount?(@transaction.amount)).to eql(true)
# 		end

# 		it "verifies time is valid" do
# 			expect(@transaction.valid_time?(@transaction.time)).to eql(true)
# 		end

# 		it "should change amount to currency format" do
# 			expect(@transaction.amount_to_currency).to eql("$1.00")
# 		end

# 		it "should change time to pretty time format" do
# 			expect(@transaction.pretty_time).to eql('Tuesday, 06 Oct 2015  5:46 PM')
# 		end		

# 	end

# 	context "account number is not a fixnum" do
# 		let(:transaction) { @transaction = Transaction.new(credit_account: "hello", debit_account:"bad", amount:100, time: 234) }			

# 		it "notifies user that account number is incorrect format" do
# 			expect{transaction.valid_account_number?(transaction.credit_account||transaction.debit_account||transaction.time)}.to raise_error("Account number must be of type integer.")
# 		end

# 	end
# end
