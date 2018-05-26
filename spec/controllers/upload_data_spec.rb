require 'rails_helper'

RSpec.describe UploadDataController do
  describe "GET upload_file" do
    it "renders the upload_file template" do
      get :upload_file
      expect(response).to render_template("upload_file")
    end
  end

  describe "POST import_data" do
    let(:file_path) { 'spec/fixtures/csv_files/sample.csv' }
    let(:uploaded_file) { Rack::Test::UploadedFile.new(Rails.root.join(file_path)) }

    it "checks status" do
      post :import_data, params: { data_file: uploaded_file }
      expect(response.status).to eq(204)
    end

    it "renders any template" do
      post :import_data, params: { data_file: uploaded_file }
      expect(response).to render_template(nil)
    end
  end
end
