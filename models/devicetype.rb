class DeviceType
  attr_accessor :id, :uid, :name, :published, :latest_version, :unique_name

  # :internal => :external
  def self.attribute_map
    {
      :id => :id,
      :uid => :uid,
      :name => :name,
      :published => :published,
      :latest_version => :latestVersion,
      :unique_name => :uniqueName

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    if self.class.attribute_map[:"uid"]
      @uid = attributes["uid"]
    end
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"published"]
      @published = attributes["published"]
    end
    if self.class.attribute_map[:"latest_version"]
      @latest_version = attributes["latestVersion"]
    end
    if self.class.attribute_map[:"unique_name"]
      @unique_name = attributes["uniqueName"]
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

