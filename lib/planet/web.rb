require 'sinatra/base'
require 'haml'

class Planet
  class Web < Sinatra::Base
    get '/' do
      @conf = YAML.load_file('planet.yml')
      haml :index
    end
  end
end
