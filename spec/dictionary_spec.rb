require './lib/dictionary'
require './lib/night_writer'

RSpec.describe Dictionary do
  before(:each) do
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

    it 'exists' do
      dictionary = Dictionary.new

      expect(dictionary).to be_a(Dictionary)
    end

    it 'exists' do
      dictionary = Dictionary.new

      expect(dictionary.match_value).to eq(['0.', '..', '..'])
    end


  end
end
#
# nums = {
#   "a" => 32,
#   "b" => 33
# }
#
# nums.find do|key, value|
#     key == valueruby
# end
#
# nums.select do |key, value|
#   if key == "a"
#     value
#   end
#   if value == ['0.', '0.', '00']
#     key
#   end
# end
