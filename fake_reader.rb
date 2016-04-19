class FakeReader

  def initialize
	 @input = ""
  end

  def get_input
	 @input = "echo!"
  end

  def last_input
	 @input
  end
end
