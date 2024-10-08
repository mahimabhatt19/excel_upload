Given("I am on the new upload page") do
  visit new_upload_path
end

When("I upload an Excel file {string}") do |filename|
  attach_file('file', Rails.root.join('spec/fixtures', filename) ) # Ensure you have a test file in the right directory
  click_button 'Upload' # Adjust this based on your button's label
end

When("I do not upload a file") do
  # This step intentionally does nothing
  click_button 'Upload' # Click the upload button without attaching a file
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end
