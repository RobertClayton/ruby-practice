describe NextBiggest do
  before(:each) do
    @next_bigger = described_class.new
  end

  it '12 will return 21' do
    expect(@next_bigger.next_bigger(12)).to eq(21)
  end

  it '513 will return 531' do
    expect(@next_bigger.next_bigger(513)).to eq(531)
  end

  it '2017 will return 2071' do
    expect(@next_bigger.next_bigger(2017)).to eq(2071)
  end

  it '414 will return 441' do
    expect(@next_bigger.next_bigger(414)).to eq(441)
  end

  it '144 will return 414' do
    expect(@next_bigger.next_bigger(144)).to eq(414)
  end
end
