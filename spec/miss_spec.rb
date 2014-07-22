require 'miss'

describe Miss do
	
	let(:miss)	{ Miss.new	}

	it 'should return O when player atacked ship' do
		expect(miss.display).to eq "O"
	end

end