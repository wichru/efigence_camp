require 'rack'
require 'thin'

class HelloWorld
  def call(_env)

    [200, { 'Content-Type' -> 'text/plain' }, "Hello world"]
  end
end

Rack::Handler::Thin.run HelloWorld.new

# tworzenie własnego serwera
