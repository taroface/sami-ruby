class AppProperties
  attr_accessor :uid, :aid, :properties

  # :internal => :external
  def self.attribute_map
    {
      :uid => :uid,
      :aid => :aid,
      :properties => :properties

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"uid"]
      @uid = attributes["uid"]
    end
    if self.class.attribute_map[:"aid"]
      @aid = attributes["aid"]
    end
    if self.class.attribute_map[:"properties"]
      @properties = attributes["properties"]
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

