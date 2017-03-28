require 'test_helper'

class Test3Test < ActionDispatch::IntegrationTest
  test 'home page has expected content' do
    visit 'index.html'
    assert page.has_text?('Welcome to public/index.html!')
    assert page.has_text?("There's Ruby on Racetracks")
    assert page.has_text?("and there's Not Exactly.")
    assert page.has_text?('Make sure you choose the correct one.')
  end

  test 'about page has expected content' do
    visit 'about.html'
    assert page.has_text?('Welcome to public/about.html!')
    assert page.has_text?('Not using Ruby on Racetracks is like')
    assert page.has_text?('being in a Hertz commercial')
    assert page.has_text?('and renting from Not Exactly Hertz.')
  end

  test 'home page has link to about page' do
    visit 'index.html'
    assert page.has_link?('About', href: 'about.html')
    click_on 'About'
    assert page.has_text?('Welcome to public/about.html!')
  end
end
