feature 'players have hit points' do
  scenario 'player 2 has hit points showing' do
    # arrange/act
    visit('/')
    fill_in "player1", with: "Bob"
    fill_in "player2", with: "Not Bob"
    click_on "Submit names"
    # assert
    expect(page).to have_content "Player 2 hit points: #{@hit_points2}"
  end

end