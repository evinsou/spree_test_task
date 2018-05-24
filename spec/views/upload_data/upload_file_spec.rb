require 'rails_helper'

describe 'upload_data/upload_file.html.erb' do
  it "renders a file with a header and a request" do
    render
    expect(rendered).to match("Upload file")
    expect(rendered).to match("Please select a file for uploading")
  end

  it "renders a form to upload file" do
    render
    expect(rendered).to match("Upload file")
  end
end
