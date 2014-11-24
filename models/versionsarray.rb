class VersionsArray
  attr_accessor :versions

  # :internal => :external
  def self.attribute_map
    {
      :versions => :versions

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"versions"]
      if (value = attributes["versions"]).is_a?(Array)
          @versions = value.map{ |v| Integer.new(v) }

        end
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

