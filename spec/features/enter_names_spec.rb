feature 'testing /names' do
    scenario 'players fill in and submit their names, then see them on screen' do
        #arrange and act
        visit('/')
        fill_in "player1", with: "Bob"
        fill_in "player2", with: "Not Bob"
        click_on "Submit names"
        #assert
        expect(page).to have_content "Bob"
        expect(page).to have_content "Not Bob"
    end
end