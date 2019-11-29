feature 'Show hit points' do

  scenario 'see initial HP for player 1' do
    sign_in_and_play
    expect(page).to have_content "Ben: 60/60 HP"
  end

  scenario 'see initial HP for player 2' do
    sign_in_and_play
    expect(page).to have_content "Andrew: 60/60 HP"
  end

end
