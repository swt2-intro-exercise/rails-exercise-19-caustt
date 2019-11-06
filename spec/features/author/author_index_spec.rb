require 'rails_helper'

describe "Author Index Page", type: :feature do

	it "should show render" do
    visit authors_path
  end

  it "should link to the author" do
  @author = create(:author)
  visit authors_path
  expect(page).to have_link @author.first_name, href: author_path(@author)
	end




end

