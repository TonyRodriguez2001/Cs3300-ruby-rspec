# frozen_string_literal: true

require_relative '../lib/ruby_intro'

describe 'Ruby intro part 1' do

  #describe '#sum' do is defining an example group which essentially 
  #holds the test cases for the method sum 
  describe '#sum' do

    #'it' is defining an example (a test) the string describes the behavior that 
    #should happen within the it block
    it 'returns correct sum [1 point]', points: 1 do
      #An expection is being defined below which is essentialy verifying 
      #that the result that is returned by sum belongs to the integer class
      #(.to be_a_kind_of Integer)
      expect(sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      #verifying that sum returns 15 with input [1, 2, 3, 4, 5]
      expect(sum([1, 2, 3, 4, 5])).to eq(15)
      #verifying that sum returns 5 with input [1, 2, 3, 4, -5]
      expect(sum([1, 2, 3, 4, -5])).to eq(5)
      #verifying that sum returns -90 with input [1, 2, 3, 4, -5, 5, -100]
      expect(sum([1, 2, 3, 4, -5, 5, -100])).to eq(-90)
    end #end of it block (returns correct sum test)

    #'it' block defining the example (test) that verifies that the sum method 
    #works on an empty array
    it 'works on the empty array [2 points]', points: 2 do
      #verifying that passing in an empty array does not trigger an error
      expect { sum([]) }.not_to raise_error
      #verifying that sum returns zero when an empty array is passed in
      expect(sum([])).to be_zero
    end#end of it block (works on empty array test)
  end#end of example group 

  describe '#max_2_sum' do
    
    it 'returns the correct sum [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      expect(max_2_sum([1, -2, -3, -4, -5])).to eq(-1)
    end
    it 'works even if 2 largest values are the same [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 3])).to eq(6)
    end
    it 'returns zero if array is empty [1 point]', points: 1 do
      expect(max_2_sum([])).to be_zero
    end
    it 'returns value of the element if just one element [1 point]', points: 1 do
      expect(max_2_sum([3])).to eq(3)
    end
  end

  describe '#sum_to_n' do

    it 'returns true when any two elements sum to the second argument [2 points]', points: 2 do
      expect(sum_to_n?([1, 2, 3, 4, 5], 5)).to be true # 2 + 3 = 5
      expect(sum_to_n?([3, 0, 5], 5)).to be true # 0 + 5 = 5
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], -3)).to be true  # handles negative sum
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
      expect(sum_to_n?([-1, -2, 3, 4, 6, -8], 12)).to be false # no two elements that sum
    end
    it 'returns false for any single element array [1 point]', points: 1 do
      expect(sum_to_n?([0], 0)).to be false
      expect(sum_to_n?([1], 1)).to be false
      expect(sum_to_n?([-1], -1)).to be false
      expect(sum_to_n?([-3], 0)).to be false
    end
    it 'returns false for an empty array [1 point]', points: 1 do
      expect(sum_to_n?([], 0)).to be false
      expect(sum_to_n?([], 7)).to be false
    end
  end
end
