class Device
  attr_accessor :id, :uid, :dtid, :name, :manifest_version, :manifest_version_policy, :need_provider_auth, :properties, :provider_credentials

  # :internal => :external
  def self.attribute_map
    {
      :id => :id,
      :uid => :uid,
      :dtid => :dtid,
      :name => :name,
      :manifest_version => :manifestVersion,
      :manifest_version_policy => :manifestVersionPolicy,
      :need_provider_auth => :needProviderAuth,
      :properties => :properties,
      :provider_credentials => :providerCredentials

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
    if self.class.attribute_map[:"dtid"]
      @dtid = attributes["dtid"]
    end
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"manifest_version"]
      @manifest_version = attributes["manifestVersion"]
    end
    if self.class.attribute_map[:"manifest_version_policy"]
      @manifest_version_policy = attributes["manifestVersionPolicy"]
    end
    if self.class.attribute_map[:"need_provider_auth"]
      @need_provider_auth = attributes["needProviderAuth"]
    end
    if self.class.attribute_map[:"properties"]
      @properties = attributes["properties"]
    end
    if self.class.attribute_map[:"provider_credentials"]
      @provider_credentials = attributes["providerCredentials"]
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

