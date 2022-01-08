feature 'testing /names' do
    scenario 'players fill in and submit their names, then see them on screen' do
        #arrange and act
        sign_in_and_play
        #assert
        expect(page).to have_content 'Bob'
        expect(page).to have_content 'Not Bob'
    end
end