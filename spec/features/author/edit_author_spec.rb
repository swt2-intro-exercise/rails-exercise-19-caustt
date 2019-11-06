require 'rails_helper'

describe "Editing author page", type: :feature do

	before :each do
		@author = create(:author)
	end

	it "should render" do
		visit edit_author_path(@author)
	end

	it "should be possible to change the first name and submitting without getting an error" do
		visit edit_author_path(@author)
		page.fill_in 'author[first_name]', with: 'Bob'
		find('input[type="submit"]').click
		@author.reload
		expect(@author.first_name).to eq "Bob"
	end

end