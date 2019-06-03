require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do   #get = renders reverse.erb page
    erb :reverse
  end

  post '/reverse' do #post = 1.receives params hash from form, 2.renders reversed.erb page
    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/friends' do   #renders friends.erb page
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
  end
end
