class Temperature
attr_accessor :f, :c

  def initialize( options = {} )
    @f = options[:f]
    @c = options[:c]
  end

  def to_fahrenheit
    @c.to_i * 9 / 5 + 32
  end

  def to_celsius
    ( @f.to_i - 32 ) * 5 / 9
  end

  def self.in_celsius(temp)
    Temperature.new(:c => temp)
  end

  def self.in_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    @c = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @f = temp
  end
end
