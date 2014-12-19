require 'array_method'



describe Array do

	let (:arr) {Array.new[5] = [1, 3, 5, 6, 2]}

	it 'should push the value into the array' do

		
		expect(arr.my_push(4)).to eq( [1, 3, 5, 6, 2, 4] )

	end

	it 'should pop the end value of an array' do
		
		
		expect(arr.my_pop).to eq(2)
		expect(arr).to eq( [1, 3, 5, 6] )

	end

	it 'should shift the array' do
		expect(arr.my_shift).to eq(1)
		expect(arr).to eq( [3, 5, 6, 2] )
	end

	context 'slice' do

		it 'should take an item out of the array' do
			expect(arr.my_slice(1)).to eq(3)
		end
		
		it 'should output item out of the array' do
			expect(arr.my_slice(1..3)).to eq([3, 5, 6])
		end

		it 'should take an item out of the array' do
			expect(arr.my_slice!(1..3)).to eq([3, 5, 6])
			# expect(arr).to eq([1, 2])
		end

	end

	context 'inject' do

		it 'should inject' do
			array = [1,2,3,4]
			expect(array.inject {|memo, v| memo + v}).to eq(10)
			expect(array.my_inject {|memo, v| memo + v}).to eq(10)
		end	
		
		it 'should inject with multiplication' do
			array = [1,2,3,4]
			expect(array.inject {|memo, v| memo * v}).to eq(24)
			expect(array.my_inject {|memo, v| memo * v}).to eq(24)
		end	

		it 'should inject with argument' do
			array = [1,2,3,4]
			expect(array.inject(10) {|memo, v| memo + v}).to eq(20)
			expect(array.my_inject(10) {|memo, v| memo + v}).to eq(20)
		end	

	end

end