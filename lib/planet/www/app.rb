require 'sinatra/base'

class PlanetWeb < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
