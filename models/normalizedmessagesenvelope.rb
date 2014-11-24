class NormalizedMessagesEnvelope
  attr_accessor :sdids, :sdid, :uid, :start_date, :end_date, :order, :next, :count, :size, :data

  # :internal => :external
  def self.attribute_map
    {
      :sdids => :sdids,
      :sdid => :sdid,
      :uid => :uid,
      :start_date => :startDate,
      :end_date => :endDate,
      :order => :order,
      :next => :next,
      :count => :count,
      :size => :size,
      :data => :data

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"sdids"]
      @sdids = attributes["sdids"]
    end
    if self.class.attribute_map[:"sdid"]
      @sdid = attributes["sdid"]
    end
    if self.class.attribute_map[:"uid"]
      @uid = attributes["uid"]
    end
    if self.class.attribute_map[:"start_date"]
      @start_date = attributes["startDate"]
    end
    if self.class.attribute_map[:"end_date"]
      @end_date = attributes["endDate"]
    end
    if self.class.attribute_map[:"order"]
      @order = attributes["order"]
    end
    if self.class.attribute_map[:"next"]
      @next = attributes["next"]
    end
    if self.class.attribute_map[:"count"]
      @count = attributes["count"]
    end
    if self.class.attribute_map[:"size"]
      @size = attributes["size"]
    end
    if self.class.attribute_map[:"data"]
      if (value = attributes["data"]).is_a?(Array)
          @data = value.map{ |v| NormalizedMessage.new(v) }

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

