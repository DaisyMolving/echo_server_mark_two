class Writer

  def initialize(output=$stdout)
	 @output = output
	 @welcome_message = "Welcome, please enter something to echo, or type exit at any time to quit:\n"
	 @exit_message = "Goodbye!"
  end

  def welcome_message
	 @output.print @welcome_message
  end

  def exit_message
	 @output.print @exit_message
  end

  def repeat(user_input)
	 @output.print user_input + "\n"
  end

  def last_message_printed
	 @output
  end

end
