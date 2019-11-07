require 'rails_helper'

describe 'New Paper', type: :model do

  it "creation should fail withour a title" do
  	@paper = Paper.new(venue: "Mind 49: 433-460", year: 1950)
    expect(@paper).to_not be_valid
  end
end
