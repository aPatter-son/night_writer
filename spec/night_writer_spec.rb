require './lib/night_writer'

RSpec.describe NightWriter do
  it 'exists' do
    message = NightWriter.new

    expect(message).to be_a(NightWriter)
  end

  it 'can split the message' do
    message = NightWriter.new
    # with the message set locally to 'This is a test'

    expect(message.splits).to eq(["This", "is", "a", "test"])
  end

  it 'can count the amount of characters of each word' do
    message = NightWriter.new

    expect(message.character_count).to eq(11)
  end

  xit 'can split the message' do
    message = NightWriter.new

    expect(message.split).to eq(1)
  end
end
