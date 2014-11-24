class NormalizedMessage
  attr_accessor :cts, :ts, :mid, :sdid, :stdid, :uid, :mv, :data

  # :internal => :external
  def self.attribute_map
    {
      :cts => :cts,
      :ts => :ts,
      :mid => :mid,
      :sdid => :sdid,
      :stdid => :stdid,
      :uid => :uid,
      :mv => :mv,
      :data => :data

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"cts"]
      @cts = attributes["cts"]
    end
    if self.class.attribute_map[:"ts"]
      @ts = attributes["ts"]
    end
    if self.class.attribute_map[:"mid"]
      @mid = attributes["mid"]
    end
    if self.class.attribute_map[:"sdid"]
      @sdid = attributes["sdid"]
    end
    if self.class.attribute_map[:"stdid"]
      @stdid = attributes["stdid"]
    end
    if self.class.attribute_map[:"uid"]
      @uid = attributes["uid"]
    end
    if self.class.attribute_map[:"mv"]
      @mv = attributes["mv"]
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

