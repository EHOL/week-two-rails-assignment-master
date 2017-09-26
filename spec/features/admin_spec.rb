require 'rails_helper'

describe 'Admin Feature' do
  it 'allows admins to sign up' do
    visit new_admin_registration_path

    fill_in 'admin[email]', with: 'form_test@test.com'
    fill_in 'admin[password]', with: 'password'
    fill_in 'admin[password_confirmation]', with: 'password'

    click_on 'Sign up'

    expect(page.current_path).to eq(root_path)
  end
end
