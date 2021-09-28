# require './lib/night_writer'
# require './lib/dictionary'

class NightWriter

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end

  def read
    File.open(@input_file).read
  end

  def create(message)
    File.open(@output_file, "w") do |file|
      file.write(message)
    end
  end

  def split
    input = File.open(@input_file).read
    array = input.split
    new = []
    array.map do |word|
      new << word.split("")
    end

    create(new)
  end

  def character_count
    input = File.open(@input_file).read
    array = input.split
    new = []
    array.map do |word|
      new << word.split("")
    end
    count = 0
    new.each do |word|
      count += word.count
    end

    count
  end

  def banner
    p "Created #{@output_file} containing #{character_count} characters"
  end

  # def match_value(let)
  #   match = []
  #
  #   @dictionary.each do |line|
  #     line.select do |letter|
  #       if let == letter
  #         match = @dictionary[letter]
  #       end
  #     end
  #   end
  #   p match
  # end
end


NightWriter.new.split
NightWriter.new.banner
# NightWriter.new.match_value("a")
