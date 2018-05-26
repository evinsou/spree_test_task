require 'csv'

class CsvParser < BaseParser

  def parse(data_string:)
    result = ::CSV.parse(data_string, headers: true, col_sep: ';').map do |data_row|
      data_hash = matching_strategy(data_row).process
      next if data_hash.nil?

      data_hash
    end
    result.compact!
    result
  end

end
