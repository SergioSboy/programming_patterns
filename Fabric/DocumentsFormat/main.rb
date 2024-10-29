require_relative 'factories/report_factory'
require_relative 'factories/invoice_factory'

def export_document(factory, format_type)
  document = factory.create_document
  format = factory.create_format(format_type)
  document.export(format)
end

export_document(ReportFactory.new, :pdf)
export_document(ReportFactory.new, :excel)