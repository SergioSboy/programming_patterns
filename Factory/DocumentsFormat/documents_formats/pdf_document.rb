require_relative 'document_format'
class PdfDocument < DocumentFormat
  def export(document)
    puts "Экспортируем #{document.class} в формат PDF"
  end
end