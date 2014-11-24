class AggregatesEnvelope
  attr_accessor :sdid, :field, :start_date, :end_date, :interval, :size, :data

  # :internal => :external
  def self.attribute_map
    {
      :sdid => :sdid,
      :field => :field,
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
    if self.class.attribute_map[:"field"]
      @field = attributes["field"]
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
          @data = value.map{ |v| Aggregates.new(v) }

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

