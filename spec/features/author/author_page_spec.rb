require 'rails_helper'

describe "Author page", type: :feature do

	before :each do
		@author = create(:author)
	end
  
  it "should render and show text" do
    visit author_path(@author)
    expect(page).to have_text(@author.first_name)
    expect(page).to have_text(@author.homepage)
  end

  it "should have link to the authors edit page" do
  	visit author_path(@author)
  	expect(page).to have_link "", href: edit_author_path(@author)

  end

end