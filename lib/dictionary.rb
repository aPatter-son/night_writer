class Dictionary
  attr_reader :dict

  def initialize(dict)
    @dictionary = dict
  end

  def match_value(let)
    match = []
    @dictionary.each do |line|
      line.select do |letter|
        if let == letter
          match = @dictionary[letter]
        end
      end
    end
    match
  end
  #
  # def translate
  #   message = "This is a test"
  #   output = ""
  #   splits = message.split
  #   splits.each do |word|
  #     split_word = word.split("")
  #     split_word.each do |letter|
  #       output += match_value(letter)
  #     end
  #   end
  #   output
  # end
end
