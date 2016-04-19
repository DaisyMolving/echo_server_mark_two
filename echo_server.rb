require_relative './reader'
require_relative './writer'
class EchoServer

  def initialize(reader, writer)
	 @reader = reader
	 @writer = writer
  end

  def start
	 welcome_message
	 echo_while_not_exit
	 exit_message
  end

  def welcome_message
	 @writer.welcome_message
  end

  def not_exit
	 read_input != "exit"
  end

  def echo_while_not_exit
	 while not_exit
		echo_input
	 end
  end

  def read_input
	 @user_input = @reader.get_input
  end

  def echo_input
	 @writer.repeat(@user_input)
  end

  def exit_message
	 @writer.exit_message
  end
end

server = EchoServer.new(Reader.new, Writer.new)
server.start
