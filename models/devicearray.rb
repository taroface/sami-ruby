class DeviceArray
  attr_accessor :devices

  # :internal => :external
  def self.attribute_map
    {
      :devices => :devices

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"devices"]
      if (value = attributes["devices"]).is_a?(Array)
          @devices = value.map{ |v| Device.new(v) }

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

