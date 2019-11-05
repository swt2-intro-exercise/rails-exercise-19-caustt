require 'rails_helper'

describe "Author page", type: :feature do

	before :each do
		@author = create(:author)
	end
  
  it "should show text" do
    visit author_path(@author)
    expect(page).to have_text(@author.first_name)
  end

end