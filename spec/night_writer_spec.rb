require './lib/night_writer'
require './lib/dictionary'

RSpec.describe NightWriter do
  it 'exists' do
    message = NightWriter.new

    expect(message).to be_a(NightWriter)
  end

  it 'can split the message' do
    message = NightWriter.new
    # with the message set locally to 'This is a test'

    expect(message.splits).to eq(["this", "is", "a", "test"])
  end

  it 'can count the amount of characters of each word' do
    message = NightWriter.new

    expect(message.character_count).to eq(11)
  end

  xit 'can match a single letter' do
    dict = {
      'a' => ['0.', '..', '..'],
      'b' => ['0.', '0.', '..'],
      'c' => ['00', '..', '..'],
      'd' => ['00', '.0', '..'],
      'e' => ['0.', '.0', '..'],
      'f' => ['00', '0.', '..'],
      'g' => ['00', '00', '..'],
      'h' => ['0.', '00', '..'],
      'i' => ['.0', '0.', '..'],
      'j' => ['.0', '00', '..'],
      'k' => ['0.', '..', '0.'],
      'l' => ['0.', '0.', '0.'],
      'm' => ['00', '..', '0.'],
      'n' => ['00', '.0', '0.'],
      'o' => ['0.', '.0', '0.'],
      'p' => ['00', '0.', '0.'],
      'q' => ['00', '00', '0.'],
      'r' => ['0.', '00', '0.'],
      's' => ['.0', '0.', '0.'],
      't' => ['.0', '00', '0.'],
      'u' => ['0.', '..', '00'],
      'v' => ['0.', '0.', '00'],
      'w' => ['.0', '00', '.0'],
      'x' => ['00', '..', '00'],
      'y' => ['00', '.0', '00'],
      'z' => ['0.', '.0', '00']
    }
    dictionary = Dictionary.new(dict)

    expect(dictionary.match_value("a")).to eq(['0.', '..', '..'])
  end

  xit 'has a banner' do
    message = NightWriter.new
    dictionary = Dictionary.new(dict)

    expect(message.banner).to eq()
  end
end
