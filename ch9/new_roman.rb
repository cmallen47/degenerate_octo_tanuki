#Here is a procedural way to convert a number to a roman numeral...
def convert_to_roman numerus

  letters  = []
  numerals = { 
    M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, 
    L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 
  }

  numerals.each do |k, v|
    n = numerus.divmod v
    numerus = n[1]
    letters << k.to_s * n[0]    
  end
  letters.join
end



#Here is another way... monkey patch Fixnum!
class Fixnum

  NUMERALS = {
    M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, 
    L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 
  }

  def romanize
    numerus = self
    NUMERALS.map do |k, v| 
      temp, numerus = numerus.divmod(v)
      k.to_s * temp     
    end.join
  end
end