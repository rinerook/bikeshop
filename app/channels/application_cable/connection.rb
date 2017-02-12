module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	# run any sort of code before the connection between a user and the server is established
    # useful for authentication for example.
  end
end
