require_relative '../documents/report'
require_relative '../documents_formats/pdf_document'
require_relative '../documents_formats/excel_document'
require_relative 'abstract_document_factory'

class InvoiceFactory < AbstractDocumentFactory
  def create_document
    Invoice.new
  end

  def create_format(format_type)
    case format_type
    when :pdf
      PdfDocument.new
    when :excel
      ExcelDocument.new
    else
      raise "Unknown format type: #{format_type}"
    end
  end
end
