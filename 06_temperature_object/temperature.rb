class Temperature
attr_accessor :f, :c

  def initialize( options = {} )
    @f = options[:f]
    @c = options[:c]
  end

  def to_fahrenheit

  end

  def to_celsius

  end
end
