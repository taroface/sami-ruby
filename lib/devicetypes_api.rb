require "uri"

class Devicetypes_api
  basePath = "https://api.samsungsami.io/v1.1"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self.get_device_types (name,offset,count,opts={})
    query_param_keys = [:offset,:count]

    # verify existence of params
    raise "name is required" if name.nil?
    # set default values and merge with input
    options = {
    :name => name,
      :offset => offset,
      :count => count}.merge(opts)

    #resource path
    path = "/devicetypes".sub('{format}','json').sub('{' + 'name' + '}', escapeString(name))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceTypesEnvelope.new(response)

  end

def self.get_device_type (device_type_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_type_id is required" if device_type_id.nil?
    # set default values and merge with input
    options = {
    :device_type_id => device_type_id}.merge(opts)

    #resource path
    path = "/devicetypes/{deviceTypeId}".sub('{format}','json').sub('{' + 'deviceTypeId' + '}', escapeString(device_type_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    DeviceTypeEnvelope.new(response)

  end

def self.get_latest_manifest_properties (device_type_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_type_id is required" if device_type_id.nil?
    # set default values and merge with input
    options = {
    :device_type_id => device_type_id}.merge(opts)

    #resource path
    path = "/devicetypes/{deviceTypeId}/manifests/latest/properties".sub('{format}','json').sub('{' + 'deviceTypeId' + '}', escapeString(device_type_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ManifestPropertiesEnvelope.new(response)

  end

def self.get_manifest_properties (device_type_id,version,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_type_id is required" if device_type_id.nil?
    raise "version is required" if version.nil?
    # set default values and merge with input
    options = {
    :device_type_id => device_type_id,
      :version => version}.merge(opts)

    #resource path
    path = "/devicetypes/{deviceTypeId}/manifests/{version}/properties".sub('{format}','json').sub('{' + 'deviceTypeId' + '}', escapeString(device_type_id))
    .sub('{' + 'version' + '}', escapeString(version))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ManifestPropertiesEnvelope.new(response)

  end

def self.get_available_manifest_versions (device_type_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "device_type_id is required" if device_type_id.nil?
    # set default values and merge with input
    options = {
    :device_type_id => device_type_id}.merge(opts)

    #resource path
    path = "/devicetypes/{deviceTypeId}/availablemanifestversions".sub('{format}','json').sub('{' + 'deviceTypeId' + '}', escapeString(device_type_id))
    

    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ManifestVersionsEnvelope.new(response)

  end

end

