
feature "Testing Infrastructure" do
  # scenario "Checks that the page says hello" do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario "expects player1 to fill in their name" do
    sign_in_and_play
    expect(page).to have_content 'Nick'
  end

  scenario "expect player2 to fill in their name" do
    sign_in_and_play
    expect(page).to have_content 'JJ'
  end

  scenario "expects to see Player 2's Hit Points" do
    visit('/play')
    expect(page).to have_content('HP')
  end
end
