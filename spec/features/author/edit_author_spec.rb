require 'rails_helper'

describe "Editing author page", type: :feature do

	before :each do
		@author = create(:author)
	end

	it "should render" do
		visit edit_author_path(@author)
	end

end