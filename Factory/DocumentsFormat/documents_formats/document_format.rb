class DocumentFormat
  def export(document)
    raise NotImplementedError, "#{self.class} has not implemented export"
  end
end