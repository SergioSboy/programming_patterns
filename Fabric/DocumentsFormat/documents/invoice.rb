require_relative 'document'
class Invoice <  Document
  def export(format)
    format.export(self)
  end
end