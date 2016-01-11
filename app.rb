require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result')
  erb(:result)
end
