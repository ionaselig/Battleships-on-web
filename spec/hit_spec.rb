require 'hit'

describe Hit do 

	it 'should return X when player atacked ship' do
		hit = Hit.new
		expect(hit.display).to eq ("X")
	end
	
end

