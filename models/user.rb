class User
  attr_accessor :id, :name, :email, :full_name, :sa_identity, :created_on, :modified_on

  # :internal => :external
  def self.attribute_map
    {
      :id => :id,
      :name => :name,
      :email => :email,
      :full_name => :fullName,
      :sa_identity => :saIdentity,
      :created_on => :createdOn,
      :modified_on => :modifiedOn

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"email"]
      @email = attributes["email"]
    end
    if self.class.attribute_map[:"full_name"]
      @full_name = attributes["fullName"]
    end
    if self.class.attribute_map[:"sa_identity"]
      @sa_identity = attributes["saIdentity"]
    end
    if self.class.attribute_map[:"created_on"]
      @created_on = attributes["createdOn"]
    end
    if self.class.attribute_map[:"modified_on"]
      @modified_on = attributes["modifiedOn"]
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

