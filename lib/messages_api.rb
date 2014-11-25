require "uri"

class Messages_api
  basePath = "https://api.samsungsami.io/v1.1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.get_normalized_messages (uid,sdid,mid,field_presence,offset,count,start_date= 0,end_date= 0,order= "asc",opts={})
    query_param_keys = [:uid,:sdid,:mid,:field_presence,:offset,:count,:start_date,:end_date,:order]

    # set default values and merge with input
    options = {
    :uid => uid,
      :sdid => sdid,
      :mid => mid,
      :field_presence => field_presence,
      :offset => offset,
      :count => count,
      :start_date => start_date,
      :end_date => end_date,
      :order => order}.merge(opts)

    #resource path
    path = "/messages".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    NormalizedMessagesEnvelope.new(response)

  end

def self.post_message (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :body => body}.merge(opts)

    #resource path
    path = "/messages".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    MessageIDEnvelope.new(response)

  end

def self.get_normalized_messages_last (sdids,field_presence,count,opts={})
    query_param_keys = [:sdids,:field_presence,:count]

    # verify existence of params
    raise "sdids is required" if sdids.nil?
    raise "count is required" if count.nil?
    # set default values and merge with input
    options = {
    :sdids => sdids,
      :field_presence => field_presence,
      :count => count}.merge(opts)

    #resource path
    path = "/messages/last".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    NormalizedMessagesEnvelope.new(response)

  end

def self.get_normalized_messages_aggregates (sdid,field,start_date= 0,end_date= 0,opts={})
    query_param_keys = [:sdid,:field,:start_date,:end_date]

    # verify existence of params
    raise "sdid is required" if sdid.nil?
    raise "field is required" if field.nil?
    # set default values and merge with input
    options = {
    :sdid => sdid,
      :field => field,
      :start_date => start_date,
      :end_date => end_date}.merge(opts)

    #resource path
    path = "/messages/analytics/aggregates".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AggregatesEnvelope.new(response)

  end

def self.get_normalized_messages_presence (sdid,field_presence,interval,start_date= 0,end_date= 0,opts={})
    query_param_keys = [:sdid,:field_presence,:interval,:start_date,:end_date]

    # verify existence of params
    raise "sdid is required" if sdid.nil?
    raise "field_presence is required" if field_presence.nil?
    raise "interval is required" if interval.nil?
    # set default values and merge with input
    options = {
    :sdid => sdid,
      :field_presence => field_presence,
      :interval => interval,
      :start_date => start_date,
      :end_date => end_date}.merge(opts)

    #resource path
    path = "/messages/presence".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    FieldPresenceEnvelope.new(response)

  end

def self.get_raw_messages (sdid,offset,count,start_date= 0,end_date= 0,order= "asc",opts={})
    query_param_keys = [:sdid,:offset,:count,:start_date,:end_date,:order]

    # set default values and merge with input
    options = {
    :sdid => sdid,
      :offset => offset,
      :count => count,
      :start_date => start_date,
      :end_date => end_date,
      :order => order}.merge(opts)

    #resource path
    path = "/messages/raw".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    RawMessagesEnvelope.new(response)

  end

def self.export_normalized_messages (sdid,start_date= 0,end_date= 0,order= "asc",format= "json",opts={})
    query_param_keys = [:sdid,:start_date,:end_date,:order,:format]

    # set default values and merge with input
    options = {
    :sdid => sdid,
      :start_date => start_date,
      :end_date => end_date,
      :order => order,
      :format => format}.merge(opts)

    #resource path
    path = "/messages/export".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ExportEnvelope.new(response)

  end

def self.check_export_status (export_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "export_id is required" if export_id.nil?
    # set default values and merge with input
    options = {
    :export_id => export_id}.merge(opts)

    #resource path
    path = "/messages/export/{exportId}/status".sub('{format}','json').sub('{' + 'exportId' + '}', escapeString(export_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ExportStatusEnvelope.new(response)

  end

end

