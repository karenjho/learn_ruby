class Temperature
attr_accessor :f, :c

  def initialize( options = {} )
    @f = options[:f]
    @c = options[:c]
  end

  def to_fahrenheit
    if @c == nil
      @f
    else
      ( @c.to_i * 9 / 5 + 32.00 ).round(0)
    end
  end

  def to_celsius
    if @f == nil
      @c
    else
      ( ( @f.to_i - 32 ) * 5 / 9.00 ).round(0)
    end
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
    @f = nil
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @f = temp
    @c = nil
  end
end
