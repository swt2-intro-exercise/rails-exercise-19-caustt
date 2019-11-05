require 'rails_helper'

describe 'New author', type: :model do

	before :each do

		@first_name = 'Alan'
		@last_name = 'Turing'
		@homepage = '"http://wikipedia.de/Alan_Turing"'

		@author = Author.new(first_name: @first_name, last_name: @last_name, homepage: @homepage)

	end

	it 'should have a first_name, last_name and homepage, which are all strings.' do

		expect(@author.first_name).to eq(@first_name)
		expect(@author.last_name). to eq(@last_name)
		expect(@author.homepage).to eq(@homepage)

	end

	it 'should have a method name which returns the full name of an author' do

		expect(@author.name).to eq(@first_name + @last_name)

	end
	
end
