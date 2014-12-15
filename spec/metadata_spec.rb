require 'array_method'



describe Array do

	it 'should push the value into the array' do

		arr = [1, 3, 5, 6, 2]
		expect(arr.my_push(4)).to eq( [1, 3, 5, 6, 2, 4] )

	end

end