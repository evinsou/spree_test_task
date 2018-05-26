class ImportingDataJob < ApplicationJob
  queue_as :default

  def perform(*args)
    file_path = args.first
    operator = ::Operator.new(file_path: file_path)
    operator.parse_file
    operator.import
  end
end
