require 'sinatra/base'
require 'haml'

class Planet
  class Web < Sinatra::Base
    helpers do
      def navlink(name, path)
        if @path == path
          haml %Q[%span{:class => "current_path"}= "#{name}"]
        else
          haml %Q[%a{:href => "#{url(path)}"}= "#{name}"]
        end
      end
    end

    before do
      @conf = YAML.load_file('planet.yml')
      @path = request.path_info
    end

    get '/' do
      haml :blogs
    end

    get '/settings' do
      haml :settings
    end
  end
end
