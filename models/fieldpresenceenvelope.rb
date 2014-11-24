class FieldPresenceEnvelope
  attr_accessor :sdid, :field_presence, :start_date, :end_date, :interval, :size, :data

  # :internal => :external
  def self.attribute_map
    {
      :sdid => :sdid,
      :field_presence => :fieldPresence,
      :start_date => :startDate,
      :end_date => :endDate,
      :interval => :interval,
      :size => :size,
      :data => :data

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"sdid"]
      @sdid = attributes["sdid"]
    end
    if self.class.attribute_map[:"field_presence"]
      @field_presence = attributes["fieldPresence"]
    end
    if self.class.attribute_map[:"start_date"]
      @start_date = attributes["startDate"]
    end
    if self.class.attribute_map[:"end_date"]
      @end_date = attributes["endDate"]
    end
    if self.class.attribute_map[:"interval"]
      @interval = attributes["interval"]
    end
    if self.class.attribute_map[:"size"]
      @size = attributes["size"]
    end
    if self.class.attribute_map[:"data"]
      if (value = attributes["data"]).is_a?(Array)
          @data = value.map{ |v| FieldPresence.new(v) }

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

