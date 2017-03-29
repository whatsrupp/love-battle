
feature "Testing Infrastructure" do
  scenario "Checks that the page says hello" do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

end
