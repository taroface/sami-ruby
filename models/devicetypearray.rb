class DeviceTypeArray
  attr_accessor :device_types

  # :internal => :external
  def self.attribute_map
    {
      :device_types => :deviceTypes

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"device_types"]
      if (value = attributes["deviceTypes"]).is_a?(Array)
          @device_types = value.map{ |v| DeviceType.new(v) }

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

