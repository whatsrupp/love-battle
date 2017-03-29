
feature "Testing Infrastructure" do
  # scenario "Checks that the page says hello" do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario "expects player1 to fill in their name" do
    visit('/')
    fill_in('player1_name', :with => 'Nick')
    click_button('Submit')
    expect(page).to have_content 'Nick'
  end

  scenario "expect player2 to fill in their name" do
    visit('/')
    fill_in('player2_name', :with => 'JJ')
    click_button('Submit')
    expect(page).to have_content 'JJ'
  end
end
