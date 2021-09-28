
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

  def translate(new)
    new.each do |letter|
      require "pry"; binding.pry
    end

  end

  # def splits
  #   message = '1 2 3 4'
  #   split_array = []
  #   split_array << message.split(" ")
  #   split_array.flatten
  # end

  def character_count
    count = 0
    message_array = splits

    message_array.each do |word|
      count += word.length
    end
    count
  end
end


NightWriter.new.split
