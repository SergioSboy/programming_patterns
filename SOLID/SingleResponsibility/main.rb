class PrintCsv
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def generate_data(data)
    File.open(@filename, 'w') do |file|
      file.write(data)
    end
  end
end

class FormatData
  attr_reader :raw_data

  def initialize(raw_data)
    @raw_data = raw_data
  end

  def format
    @raw_data.inject('') do |result, item|
      result << [
        item[:name],
        item[:surname],
        item[:occupation]
      ].join(',')
      result << "\n"
    end
  end
end


data = []

formatter = FormatData.new(data)
formatted_data = formatter.format

exporter = PrintCsv.new('output.csv')
exporter.generate_data(formatted_data)