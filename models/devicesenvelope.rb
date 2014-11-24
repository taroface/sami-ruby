class DevicesEnvelope
  attr_accessor :total, :count, :offset, :data

  # :internal => :external
  def self.attribute_map
    {
      :total => :total,
      :count => :count,
      :offset => :offset,
      :data => :data

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"total"]
      @total = attributes["total"]
    end
    if self.class.attribute_map[:"count"]
      @count = attributes["count"]
    end
    if self.class.attribute_map[:"offset"]
      @offset = attributes["offset"]
    end
    if self.class.attribute_map[:"data"]
      @data = attributes["data"]
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

