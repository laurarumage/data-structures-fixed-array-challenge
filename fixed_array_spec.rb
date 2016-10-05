require_relative 'fixed_array'

describe FixedArray do
  it "instantiates a new fixed array with space for number of elements user specifies" do
    array = FixedArray.new(6)
    expect(array.size).to eq 6
  end

  it "gets a value from the array at the specified index" do
    array = FixedArray.new(3)
    expect(array.get(0)).to eq nil
  end

  it "throws an IndexOutOfBoundsError if the user tries to get a value at an index outside the bounds of the fixed array" do
    array = FixedArray.new(4)
    expect{array.get(6)}.to raise_error(IndexOutOfBoundsError)
  end
end
