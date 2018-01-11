# frozen_string_literal: true

#
# Main Sinatra Server
#
class App < Sinatra::Base
  get '/assets/*' do
    env['PATH_INFO'].sub!('/assets', '')
    settings.environment.call(env)
  end

  get '/' do
    puts "Hello world!"
    puts ENV['RACK_ENV']
    slim :index
  end
end
