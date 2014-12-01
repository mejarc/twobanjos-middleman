require "spec_helper"

describe 'index', type: :feature do
  before { visit '/' }
 
  it 'has the current year in the footer' do
    footer = page.find('footer')
    expect(footer).to have_content('2014')
  end
end

