require 'rails_helper'

describe 'Auth link helper' do
  it 'has links to register and sign in if a user is not logged in' do
    visit root_path
    expect(page).to have_content("Sign In")
    expect(page).to have_content("Register")
  end

  it 'has a logout link if a user is logged in' do
    admin = Admin.create(email: 'loggedin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
    login_as(admin)
    visit root_path
    expect(page).to have_content("Logout")
  end
end
