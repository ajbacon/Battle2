feature "show whos turn it is" do

  scenario "at the start of the game" do
    sign_in_and_play
    expect(page).to have_content("Ben's turn")
  end

  scenario "after player 1's turn" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content("Andrew's turn")
  end

  


end