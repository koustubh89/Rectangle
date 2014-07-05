#Models a line and returns the length
class Line
  def initialize coordinate1, coordinate2
    @coordinate1 = coordinate1
    @coordinate2 = coordinate2
  end
  def coordinates
    [@coordinate1,@coordinate2]
  end
  def length
    ( Math.sqrt ( @coordinate2.x - @coordinate1.x )**2 + ( @coordinate2.y - @coordinate1.y)**2 ).to_i
  end

  def == line2
    coordinates == line2.coordinates || [ @coordinate2, @coordinate1 ] == line2.coordinates
  end


end