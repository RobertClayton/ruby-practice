describe NextBiggest do
  before(:each) do
    @next_bigger = described_class.new
  end

  it 'should return n + 1' do
    expect(@next_bigger.next_bigger(1)).to eq(2)
  end
end
