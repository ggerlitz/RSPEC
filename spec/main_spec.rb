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




