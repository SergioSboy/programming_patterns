require_relative 'document'
class Report < Document
  def export(format)
    format.export(self)
  end
end