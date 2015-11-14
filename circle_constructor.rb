class Circle
  def initialize(radius)
    if radius.kind_of?(Hash) == true
      if radius.has_key?(:radius)
        @radius = radius[:radius]
      elsif radius.has_key?(:diameter)
        @radius = radius[:diameter] / 2
      end
    elsif radius.kind_of?(Fixnum) == true || radius.kind_of?(Float) == true
      @radius = radius
    end
  end
end

require 'pry'
binding.pry
