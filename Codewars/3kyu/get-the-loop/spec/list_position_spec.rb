describe Position do
  before :each do
    anagram = described_class.new
  end

  it 'A = 1'  do
    expect(anagram.listPosition('A')).to eq(1)
  end

  # it 'ABAB = 2'  do
  #   expect(anagram.listPosition('ABAB')).to eq(2)
  # end
  #
  # it 'AAAB = 1'  do
  #   expect(anagram.listPosition('AAAB')).to eq(1)
  # end
  #
  # it 'BAAA = 4'  do
  #   expect(anagram.listPosition('BAAA')).to eq(4)
  # end
  #
  # it 'QUESTION = 24572'  do
  #   expect(anagram.listPosition('QUESTION')).to eq(24572)
  # end
  #
  # it 'BOOKKEEPER = 10743'  do
  #   expect(anagram.listPosition('BOOKKEEPER')).to eq(10743)
  # end
end
