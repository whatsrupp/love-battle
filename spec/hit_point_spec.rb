feature "Hit Points" do

  scenario "want to be able to attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Nick attacked with a BIG hug JJ JJ HP HAS NOW GONE DOWN TO: 90')
  end
end
