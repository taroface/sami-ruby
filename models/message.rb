class Message
  attr_accessor :sdid, :ddid, :ts, :data

  # :internal => :external
  def self.attribute_map
    {
      :sdid => :sdid,
      :ddid => :ddid,
      :ts => :ts,
      :data => :data

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"sdid"]
      @sdid = attributes["sdid"]
    end
    if self.class.attribute_map[:"ddid"]
      @ddid = attributes["ddid"]
    end
    if self.class.attribute_map[:"ts"]
      @ts = attributes["ts"]
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

