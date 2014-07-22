require 'hit'

describe Hit do 

	let(:hit)	{ Hit.new	}

	it 'should return X when player atacked ship' do
		expect(hit.display).to eq "X"
	end

end