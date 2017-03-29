
feature "Testing Infrastructure" do
  # scenario "Checks that the page says hello" do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario "expects players to fill in their names" do
    visit('/')
    fill_in('name', :with => 'Nick')
    click_button('Submit')
    expect(page).to have_content 'Nick'
  end
end
