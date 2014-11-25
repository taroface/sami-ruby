class ExportStatusEnvelope
  attr_accessor :export_id, :status

  # :internal => :external
  def self.attribute_map
    {
      :export_id => :exportId,
      :status => :status

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"export_id"]
      @export_id = attributes["exportId"]
    end
    if self.class.attribute_map[:"status"]
      @status = attributes["status"]
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

