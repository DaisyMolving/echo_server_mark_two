class Reader

  def initialize(input=$stdin)
	 @input = input
  end

  def get_input
	 @input.gets.chomp
  end

  def last_input
	 @input
  end
end
