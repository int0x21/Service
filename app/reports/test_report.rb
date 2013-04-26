class TestReport < Prawn::Document
  def to_pdf
    text "Hello crustaceans of the world!"
    render
  end
end
