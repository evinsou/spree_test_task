module CsvParserStrategies
  class DefaultStrategy

    attr_accessor :data

    def initialize(data)
      @data = data
    end

    def process
      result_hash = data.to_hash
      result_hash.compact!
      return if result_hash.empty?

      result_hash['price'].gsub!(',', '.')
      result_hash
    end

  end  
end
