class Server
  attr_accessor :host, :port;
  def initialize( host = "localhost", port = 3000 )
    @host = host;
    @port = port;
    puts ">>> Server running in port #{port}"
  end

  def request(endpoint)
    case endpoint
    when "/"
      puts "This is the index route"
    when "get-all-users"
      puts [ "makinde", "mayowa" ]
    else
      puts "Cannot locate endpoint: #{endpoint}"
    end
  end
end

user_server = Server.new("usermgmt", 2022);
user_server.request("auth");



