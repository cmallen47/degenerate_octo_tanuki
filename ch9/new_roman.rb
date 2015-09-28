#Here is a procedural way to convert a number to a roman numeral...
def convert_to_roman numerus

  letters  = []
  original = numerus
  numerals = { 
    M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, 
    L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 
  }

  numerals.each do |k, v| 
    n = numerus.divmod v
    if n[0] == 0 && n[1] == v
      next
    else
      n[0].times { letters << k }
      numerus = n[1]
    end
  end
  letters.join
end


#Here is another way... monkey patch Fixnum!
class Fixnum

  NUMERALS = {
    "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, 
    "C" => 100, "XC" => 90,  "L" => 50,  "XL" => 40,  
    "X" => 10, "IX" => 9,   "V" => 5,   "IV" => 4,   
    "I" => 1
  }

  def romanize
    numerus = self
    NUMERALS.map do |k, v| 
      temp, numerus = numerus.divmod(v)
      k * temp     
    end.join
  end
end