feature "Hit Points" do

  scenario "want to be able to attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('attacked with a BIG hug ')
  end
end
