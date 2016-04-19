require_relative './fake_writer'
require_relative './fake_reader'
require_relative './echo_server'

describe EchoServer do

  it "should print welcome message to the output" do
	 @welcome_message = "Welcome, please enter something to echo, or type exit at any time to quit:\n"
	 writer = FakeWriter.new
	 reader = FakeReader.new
	 server = EchoServer.new(reader, writer)
	 server.welcome_message
	 expect(writer.last_message_printed).to eq @welcome_message
  end

  it 'should read user input' do
	 user_input = "echo!"
	 writer = FakeWriter.new
	 reader = FakeReader.new
	 server = EchoServer.new(reader, writer)
	 server.read_input
	 expect(reader.last_input).to eq user_input
  end

  it 'should output the same input' do
	 user_input = "echo!"
	 writer = FakeWriter.new
	 reader = FakeReader.new
	 server = EchoServer.new(reader, writer)
	 server.echo_input
	 expect(writer.last_message_printed).to eq user_input
  end
end
