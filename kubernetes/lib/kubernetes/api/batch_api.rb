# frozen_string_literal: true

# #Kubernetes
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: v1.13.4
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 2.2.3
#

require 'uri'

module Kubernetes
  class BatchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    #
    # get information of a group
    # @param [Hash] opts the optional parameters
    # @return [V1APIGroup]
    def get_api_group(opts = {})
      data, _status_code, _headers = get_api_group_with_http_info(opts)
      data
    end

    #
    # get information of a group
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1APIGroup, Fixnum, Hash)>] V1APIGroup data, response status code and response headers
    def get_api_group_with_http_info(_opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchApi.get_api_group ...'
      end
      # resource path
      local_var_path = '/apis/batch/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] =
        @api_client.select_header_accept(['application/json', 'application/yaml',
                                          'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] =
        @api_client.select_header_content_type(['application/json', 'application/yaml',
                                                'application/vnd.kubernetes.protobuf'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'V1APIGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchApi#get_api_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
