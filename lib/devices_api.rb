require "uri"

class Devices_api
  basePath = "https://api.samsungsami.io/v1.1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.add_device (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :body => body}.merge(opts)

    #resource path
    path = "/devices".sub('{format}','json')

    
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
    DeviceEnvelope.new(response)

  end

def self.get_device (device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :device_id => device_id}.merge(opts)

    #resource path
    path = "/devices/{deviceId}".sub('{format}','json').sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceEnvelope.new(response)

  end

def self.update_device (device_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_id is required" if device_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :device_id => device_id,
      :body => body}.merge(opts)

    #resource path
    path = "/devices/{deviceId}".sub('{format}','json').sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
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
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceEnvelope.new(response)

  end

def self.delete_device (device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :device_id => device_id}.merge(opts)

    #resource path
    path = "/devices/{deviceId}".sub('{format}','json').sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceEnvelope.new(response)

  end

def self.get_device_token (device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :device_id => device_id}.merge(opts)

    #resource path
    path = "/devices/{deviceId}/tokens".sub('{format}','json').sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceTokenEnvelope.new(response)

  end

def self.update_device_token (device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :device_id => device_id}.merge(opts)

    #resource path
    path = "/devices/{deviceId}/tokens".sub('{format}','json').sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceTokenEnvelope.new(response)

  end

def self.delete_device_token (device_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_id is required" if device_id.nil?
    # set default values and merge with input
    options = {
    :device_id => device_id}.merge(opts)

    #resource path
    path = "/devices/{deviceId}/tokens".sub('{format}','json').sub('{' + 'deviceId' + '}', escapeString(device_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceTokenEnvelope.new(response)

  end

end

