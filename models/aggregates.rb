class Aggregates
  attr_accessor :count, :min, :max, :mean, :sum

  # :internal => :external
  def self.attribute_map
    {
      :count => :count,
      :min => :min,
      :max => :max,
      :mean => :mean,
      :sum => :sum

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"count"]
      @count = attributes["count"]
    end
    if self.class.attribute_map[:"min"]
      @min = attributes["min"]
    end
    if self.class.attribute_map[:"max"]
      @max = attributes["max"]
    end
    if self.class.attribute_map[:"mean"]
      @mean = attributes["mean"]
    end
    if self.class.attribute_map[:"sum"]
      @sum = attributes["sum"]
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

