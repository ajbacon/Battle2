feature 'Attack' do

  scenario "after the fisrt attack" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ben attacks Andrew!"
    expect(page).to have_content "Andrew: 50/60"
  end

  scenario "after the second attack" do
    sign_in_and_play
    click_button 'Attack'
    click_button "OK"
    click_button 'Attack'
    expect(page).to have_content "Andrew attacks Ben!"
    expect(page).to have_content "Andrew: 50/60"
    expect(page).to have_content "Ben: 50/60"
  end

end