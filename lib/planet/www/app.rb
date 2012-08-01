require 'sinatra/base'
require 'haml'

class PlanetWeb < Sinatra::Base
  get '/' do
    @conf = YAML.load_file('planet.yml')
    haml :index
  end
end
