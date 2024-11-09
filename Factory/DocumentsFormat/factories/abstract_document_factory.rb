class AbstractDocumentFactory
  def create_document
    raise NotImplementedError, "Not implemented method"
  end

  def create_format
    raise NotImplementedError, "Not implemented method"
  end
end