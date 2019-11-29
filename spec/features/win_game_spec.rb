feature 'win game' do

  scenario "when a player reaches 0 points" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ben Wins!"
  end

  scenario "expect the game to restart if restart game button pressed" do
  end

  scenario "expect the game to go to new game screen if new game button pressed" do
  end


end
