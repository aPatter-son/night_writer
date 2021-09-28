
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
    end

  end

  # def splits
  #   message = '1 2 3 4'
  #   split_array = []
  #   split_array << message.split(" ")
  #   split_array.flatten
  # end

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
end


NightWriter.new.split
NightWriter.new.banner
