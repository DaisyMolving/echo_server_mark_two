class FakeWriter

  def initialize
	 @output = ""
  end

  def welcome_message
	 @output = "Welcome, please enter something to echo, or type exit at any time to quit:\n"
  end

  def repeat(user_input)
	 @output = user_input
  end

  def last_message_printed
	 @output
  end

end
