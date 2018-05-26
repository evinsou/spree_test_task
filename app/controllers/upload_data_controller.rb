class UploadDataController < ApplicationController
  def upload_file
  end

  def import_data
    uploaded_file = params[:data_file]
    file_location = Rails.root.join('public', 'uploaded_files', uploaded_file.original_filename)
    File.open((file_location), 'wb') do |file|
      file.write(uploaded_file.read)
    end
    ImportingDataJob.perform_later(file_location.to_s)
  end
end
