def sign_in_and_play
  visit('/')
    fill_in "player1", with: "Bob"
    fill_in "player2", with: "Not Bob"
    click_on "Submit names"
end