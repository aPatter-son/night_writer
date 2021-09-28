class Dictionary

  def initialize
    @nightwriter = NightWriter.new
  end

  def match_value
    @nightwriter.split
  end
end

Dictionary.new.match_value
