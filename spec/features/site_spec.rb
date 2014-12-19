require "spec_helper"

describe 'index', type: :feature do
  before { visit '/' }
 
  it 'has the current year in the footer' do
    footer = page.find('footer')
    expect(footer).to have_content('2014')
  end
end

describe 'Navigation', type: :feature do
  before :each do
   visit '/'
   @nav = page.find('nav')
  end

  it 'has a link to the About Me page' do
    expect(@nav).to have_link('About me', href: '/about-me.html')
  end

  it 'has a link to the About this Web Site page' do
    expect(@nav).to have_link('About this web site', href: '/about-site.html')
  end

  it 'has a link to the Portfolio page' do
    expect(@nav).to have_link('Portfolio', href: '/portfolio.html')
  end

  it 'has link to the About.me contact page' do
    expect(@nav).to have_link('Ping', href: 'http://about.me/melanie.archer')
  end
end

describe 'Portfolio', type: :feature do
  before do
    visit '/portfolio.html'
    @sites = page.all('dt')
  end

  it 'lists at least 10 web projects' do
    expect(@sites.count).to be >= 10
  end
end

describe 'About this web site', type: :feature do
  before { visit '/about-site.html' }

  it 'exists' do
    expect(page).to have_content('About this site')
  end
end


