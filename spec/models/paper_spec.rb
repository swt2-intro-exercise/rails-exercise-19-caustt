require 'rails_helper'

describe 'New Paper', type: :model do

  it "creation should fail without a title" do
  	@paper = Paper.new(venue: "Mind 49: 433-460", year: 1950)
    expect(@paper).to_not be_valid
  end

  it "should have an empty list of authors" do
  	@paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
  	expect(@paper.authors).to be_empty



  end

end
