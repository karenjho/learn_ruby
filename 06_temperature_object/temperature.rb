class Temperature
attr_accessor :f, :c

  def initialize( options = {} )
    @f = options[:f]
    @c = options[:c]
  end

  def to_fahrenheit
    @c * 9 / 5 + 32
  end

  def to_celsius
    ( @f - 32 ) * 5 / 9
  end

  def self.in_celsius(temp)
    @c = temp
  end

  def self.in_fahrenheit(temp)
    @f = temp
  end
end
