class Operator
  attr_accessor :source_file, :prepared_data

  def initialize(options)
    @source_file = options[:file_path]
  end

  def parse_file(parser: CsvParser.new)
    @prepared_data = parser.parse(data_string: File.read(source_file))
  end

  def import(table_name: Product)
    ActiveRecord::Base.transaction do
      prepared_data.each do |data_chunk|
        table_name.create!(data_chunk)
      end
    end
  end

end
