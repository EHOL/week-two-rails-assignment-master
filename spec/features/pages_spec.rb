require 'rails_helper'

describe 'Page Feature' do
  it 'can access a home page' do
    visit root_path
    expect(page.status_code).to eq(200)
  end

  it 'can access a profile page' do
    visit profile_path
    expect(page.status_code).to eq(200)
  end

  it 'can access a news page' do
    visit news_path
    expect(page.status_code).to eq(200)
  end
end
