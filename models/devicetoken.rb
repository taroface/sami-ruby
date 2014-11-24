class DeviceToken
  attr_accessor :access_token, :uid, :did, :cid

  # :internal => :external
  def self.attribute_map
    {
      :access_token => :accessToken,
      :uid => :uid,
      :did => :did,
      :cid => :cid

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"access_token"]
      @access_token = attributes["accessToken"]
    end
    if self.class.attribute_map[:"uid"]
      @uid = attributes["uid"]
    end
    if self.class.attribute_map[:"did"]
      @did = attributes["did"]
    end
    if self.class.attribute_map[:"cid"]
      @cid = attributes["cid"]
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

