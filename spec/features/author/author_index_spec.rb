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

	it "should have link to the authors edit page" do
  	expect(page).to have_link nil, href: edit_author_path(@author)
  end

  it "should have a link to delete the author" do
  	#expect(page).to have_selector("a[data-method=delete][href=#{author_path(@author)}]")#, href: author_path(@author)

  	expect(page).to have_selector("a[data-method='delete'][href='#{author_path(@author)}']")
  	#				 {"data-method" => "delete"})

  	#expect(find_link(nil, author_path(@author))["data-method"]).to eq('delete')

  end


end

