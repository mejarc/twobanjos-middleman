require "spec_helper"


describe 'index', type: :feature do
  before do
   @yr = Time.now.year
    visit '/'
  end
 
  it 'has the current year in the footer' do
    footer = page.find('footer')
    expect(footer).to have_content(@yr)
  end
end

describe 'Navigation', type: :feature do
  before :each do
   visit '/'
   @nav = page.find('nav')
  end

  it 'has a link to the About Me page' do
    expect(@nav).to have_link('About me', href: '/about-me')
  end

  it 'has a link to the About this Web Site page' do
    expect(@nav).to have_link('About this web site', href: '/about-site')
  end

  it 'has a link to the Portfolio page' do
    expect(@nav).to have_link('Portfolio', href: '/portfolio')
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
    expect(page).to have_content('About this web site')
  end
end

describe 'Showing and hiding navigation', type:  :feature do
  before(:all) do
    session = Capybara::Session.new(:selenium)
    session.visit 'http://localhost:4567/index.html'
    @window = session.driver.browser.manage.window
  end

  it 'hides the navigation on screens < 769px wide', js: true do
    @window.resize_to(600, 1024)
    expect(page).to have_css('.icon', visible: true)
  end

  # it 'shows the navigation on screens >= 768px wide' do
  #   current_window.resize_to(768, 1024)
  #   expect(@hidden).to be_true
  # end
end
