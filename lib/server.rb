
require 'db'


get '/' do

  content_type 'text/plain'

  DB[:items]
    .all
    .collect { |i| "#{i[:id]}: #{i[:name].inspect}" }
    .join("\n")
end

get '/add/:name' do

  DB[:items].insert(name: params[:name])

  content_type 'text/plain'

  "added #{params[:name].inspect}"
end

get '/clear' do

  DB[:items].delete

  content_type 'text/plain'

  'cleared.'
end

