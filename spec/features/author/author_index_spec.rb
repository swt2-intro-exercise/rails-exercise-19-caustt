require 'rails_helper'

describe "Author Index Page", type: :feature do

	before :each do
		@author = create(:author)
    visit authors_path
  end


	it "should show render" do
    expect(page).to have_text(@author.first_name)
  end

  it "should link to the author" do
  	expect(page).to have_link @author.first_name, href: author_path(@author)
	end

	it "should have a link to add a new author" do
		expect(page).to have_link 'Add Author', href: new_author_path
	end



end

