require "uri"

class Users_api
  basePath = "https://api.samsungsami.io/v1.1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.self (opts={})
    query_param_keys = []

    # set default values and merge with input
    options = {
    }.merge(opts)

    #resource path
    path = "/users/self".sub('{format}','json')

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    UserEnvelope.new(response)

  end

def self.get_user_properties (user_id,aid,opts={})
    query_param_keys = [:aid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = {
    :user_id => user_id,
      :aid => aid}.merge(opts)

    #resource path
    path = "/users/{userId}/properties".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    PropertiesEnvelope.new(response)

  end

def self.add_user_properties (user_id,aid,body,opts={})
    query_param_keys = [:aid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :user_id => user_id,
      :aid => aid,
      :body => body}.merge(opts)

    #resource path
    path = "/users/{userId}/properties".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    

    
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
    PropertiesEnvelope.new(response)

  end

def self.update_user_properties (user_id,aid,body,opts={})
    query_param_keys = [:aid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = {
    :user_id => user_id,
      :aid => aid,
      :body => body}.merge(opts)

    #resource path
    path = "/users/{userId}/properties".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    

    
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
    PropertiesEnvelope.new(response)

  end

def self.delete_user_properties (user_id,aid,opts={})
    query_param_keys = [:aid]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = {
    :user_id => user_id,
      :aid => aid}.merge(opts)

    #resource path
    path = "/users/{userId}/properties".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    PropertiesEnvelope.new(response)

  end

def self.get_user_devices (offset,count,include_properties,user_id,opts={})
    query_param_keys = [:offset,:count,:include_properties]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = {
    :offset => offset,
      :count => count,
      :include_properties => include_properties,
      :user_id => user_id}.merge(opts)

    #resource path
    path = "/users/{userId}/devices".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DevicesEnvelope.new(response)

  end

def self.get_user_device_types (offset,count,include_shared,user_id,opts={})
    query_param_keys = [:offset,:count,:include_shared]

    # verify existence of params
    raise "user_id is required" if user_id.nil?
    # set default values and merge with input
    options = {
    :offset => offset,
      :count => count,
      :include_shared => include_shared,
      :user_id => user_id}.merge(opts)

    #resource path
    path = "/users/{userId}/devicetypes".sub('{format}','json').sub('{' + 'userId' + '}', escapeString(user_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceTypesEnvelope.new(response)

  end

end

