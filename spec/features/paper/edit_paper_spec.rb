require 'rails_helper'

describe "The edit paper page", type: :feature do

	before :each do
		@paper = create(:paper)
	end

  it "should have a single multiple select box" do
  	@author = create(:author)
  	visit edit_paper_path(@paper)

 	page.find(:css, "select[multiple]")
  end


end