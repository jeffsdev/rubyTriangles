require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('triangle result index path', {:type => :feature} ) do
  it('tests a valid triangle') do
    visit('/')
    fill_in('a_field', :with => "10")
    fill_in('b_field', :with => "15")
    fill_in('c_field', :with => "20")
    click_button('send')
    expect(page).to have_content('Scalene Triangle')
  end
  it('tests a invalid triangle') do
    visit('/')
    fill_in('a_field', :with => "10")
    fill_in('b_field', :with => "3")
    fill_in('c_field', :with => "3")
    click_button('send')
    expect(page).to have_content('Not a valid triangle.')
  end
  it('tests a equilateral triangle') do
    visit('/')
    fill_in('a_field', :with => "10")
    fill_in('b_field', :with => "10")
    fill_in('c_field', :with => "10")
    click_button('send')
    expect(page).to have_content('Equilateral Triangle')
  end
  it('tests a isosceles triangle') do
    visit('/')
    fill_in('a_field', :with => "10")
    fill_in('b_field', :with => "10")
    fill_in('c_field', :with => "19")
    click_button('send')
    expect(page).to have_content('Isosceles Triangle')
  end
  it('tests a Scalene triangle') do
    visit('/')
    fill_in('a_field', :with => "10")
    fill_in('b_field', :with => "15")
    fill_in('c_field', :with => "20")
    click_button('send')
    expect(page).to have_content('Scalene Triangle')
  end
end
