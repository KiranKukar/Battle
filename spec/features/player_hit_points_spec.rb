feature 'players have hit points' do
  scenario 'player 2 has hit points showing' do
    # arrange/act
    sign_in_and_play
   # assert
    expect(page).to have_content "Player 2 hit points: #{@hit_points2}"
  end

end