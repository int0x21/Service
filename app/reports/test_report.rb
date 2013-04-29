require "prawn/measurement_extensions"

class TestReport < Prawn::Document
  
  def to_pdf
    text "Hello crustaceans of the world!"
    render
  end
  
  def lager_log
    text "Lager - Logistik", size: 20, align: :right
    
    rectangle [0,700], 540, 50
    stroke do
      horizontal_line(0, 400, at: 675)
      vertical_line(650, 700, at: 270)
      vertical_line(650, 700, at: 400)
    end
    
    #move_down 20
    
    rectangle [0,630], 540, 50
    stroke do
      horizontal_line(0, 540, at: 605)
      vertical_line(580, 630, at: 140)
      vertical_line(580, 630, at: 340)
    end
    
    #move_down 20
    
    rectangle [0,560], 540, 200
    stroke do
      horizontal_line(0, 540, at: 535)
      horizontal_line(0, 540, at: 510)
      horizontal_line(0, 540, at: 485)
      horizontal_line(0, 540, at: 460)
      horizontal_line(0, 540, at: 435)
      horizontal_line(0, 540, at: 410)
      horizontal_line(0, 540, at: 385)
      vertical_line(360, 535, at: 100)
      vertical_line(360, 535, at: 200)
      vertical_line(360, 535, at: 450)
    end
    
    move_down 346
    
    self.line_width = 4
    stroke_horizontal_rule
    self.line_width = 1
    
    rectangle [0,340], 540, 200
    stroke do
      horizontal_line(0, 540, at: 315)
      horizontal_line(0, 540, at: 290)
      horizontal_line(0, 540, at: 265)
      horizontal_line(0, 540, at: 240)
      horizontal_line(0, 540, at: 215)
      horizontal_line(0, 540, at: 190)
      horizontal_line(0, 540, at: 165)
      #horizontal_line(0, 540, at: 150)
      #horizontal_line(0, 540, at: 125)
      vertical_line(165, 315, at: 100)
      vertical_line(165, 315, at: 200)
      vertical_line(165, 315, at: 450)
    end
    
    
    
    #cell( content: "Utleveranser", width: 400, align: :center )
    
    render
  end
end

