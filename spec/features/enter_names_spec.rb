# feature 'Testing Infrastructure' do
#     scenario "can run app and check that the homepage sends a message" do
#         visit('/')
#         expect(page).to have_content "Testing infrastructure working!"
#     end
# end

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