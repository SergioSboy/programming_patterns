require_relative 'document_format'
class ExcelDocument < DocumentFormat
  def export(document)
    puts "Экспортируем #{document.class} в формат Excel document"
  end
end