class Temperature
attr_accessor :f, :c

  def initialize( options = {} )
    @f = options[:f]
    @c = options[:c]
  end
end
