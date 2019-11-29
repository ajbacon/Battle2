feature 'Enter names' do

  scenario 'Enter players name and show in browser' do 
    sign_in_and_play
    expect(page).to have_content "Commence Battle!! Ben - vs - Andrew!"
  end
  
end
