class Dessert
    attr_accessor :name
    attr_accessor :calories
    
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    ((@calories < 200) && (self.delicious?)) ? (true) : (false)
  end
  def delicious?
    return true
  end
  
  
end

class JellyBean < Dessert
    attr_accessor :flavor
  
  def initialize(flavor)
    @flavor = flavor
    @name = @flavor + " jelly bean"
    @calories = 5
    
  end
  
  def delicious?
    return (@flavor != "licorice")
  end
end
