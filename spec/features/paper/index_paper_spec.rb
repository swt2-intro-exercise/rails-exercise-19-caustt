require 'rails_helper'

describe "The index paper page", type: :feature do

  it "should only show papers from year 1950 when given GET parameter year=1950" do
  	@papers = create_list(:paper, 2)
  	@papers[0].update(title: "1950 Book", year: 1950)
  	@papers[1].update(year: 1968)

  	visit (papers_path + "?year=1950")
  	expect(page).to have_text(@papers[0].title)
  	expect(page).to_not have_text(@papers[1].title)
  end


end