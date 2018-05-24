class UploadDataController < ApplicationController
  def upload_file
  end

  def import_data
    uploaded_file = params[:data_file]
    file = File.open(Rails.root.join('public', 'uploaded_files', uploaded_file.original_filename), 'wb') do |file|
      file.write(uploaded_file.read)
    end
  end
end
