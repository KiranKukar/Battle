
feature 'Testing Infrastructure' do
    scenario "can run app and check that the homepage sends a message" do
        visit('/')
        expect(page).to have_content "Testing infrastructure working!"
    end
end