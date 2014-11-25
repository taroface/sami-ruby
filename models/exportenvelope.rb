class ExportEnvelope
  attr_accessor :export_id, :uid, :sdid, :start_date, :end_date, :order, :format

  # :internal => :external
  def self.attribute_map
    {
      :export_id => :exportId,
      :uid => :uid,
      :sdid => :sdid,
      :start_date => :startDate,
      :end_date => :endDate,
      :order => :order,
      :format => :format

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"export_id"]
      @export_id = attributes["exportId"]
    end
    if self.class.attribute_map[:"uid"]
      @uid = attributes["uid"]
    end
    if self.class.attribute_map[:"sdid"]
      @sdid = attributes["sdid"]
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
    if self.class.attribute_map[:"format"]
      @format = attributes["format"]
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

