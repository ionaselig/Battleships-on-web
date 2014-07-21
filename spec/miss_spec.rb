require 'miss'

describe Miss do
	
	it 'should return O when player attacked water' do
		miss = Miss.new
		expect(miss.display).to eq ("O")
	end

end