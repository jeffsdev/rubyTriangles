require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('triangle result index path', {:type => :feature} ) do
  it('tests a valid triangle') do
    # visit('/')

  end
end
