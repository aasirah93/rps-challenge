feature 'Attacking' do
  scenario 'attack the Computer' do
    visit('/play')
    click_button 'Rock'
    expect(page).to have_button 'Rock'
    click_button 'Paper'
    expect(page).to have_button 'Paper'
    click_button 'Scissors'
    expect(page).to have_button 'Scissors'
  end
end