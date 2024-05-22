# typed: strict
# frozen_string_literal: true

require_relative "client/response"

require "httpx"

module Httpsensible
  class Client
    attr_reader :client

    def initialize(user_agent: nil)
      headers = {
        "content-type" => "application/json",
        "accept" => "application/json",
      }
      if !user_agent.nil? && !user_agent.empty?
        headers["user-agent"] = user_agent
      end

      @client = HTTPX.plugin(:persistent)
        .plugin(:retries, max_retries: 3)
        .with_headers(headers)
    end

    # TODO: test this
    def with_plugin(plugin)
      @client = @client.plugin(plugin)
      self
    end

    # TODO: test this
    def with_authentication(authentication)
      @client = @client.authentication(authentication)
      self
    end

    def with_headers(headers)
      @client = @client.with(headers: headers)
      self
    end

    # TODO: test this
    def with(options, &blk)
      @client = @client.with(options, &blk)
      self
    end

    # TODO: test this
    def request(*args, **options)
      responses = @client.request(*args, *options)
      @last_response = if responses.is_a?(Array)
        responses.map { |response| Httpsensible::Client::Response.new(response) }
      else
        Httpsensible::Client::Response.new(responses)
      end
    end

    ["head", "get", "post", "put", "delete", "trace", "options", "connect", "patch"].each do |meth|
      class_eval(<<-MOD, __FILE__, __LINE__ + 1)
        def #{meth}(*uri, **options)
          @last_response = Httpsensible::Client::Response.new(@client.#{meth}(*uri, **options))   #   @last_response = @client.get(*uri, **options)
        end
      MOD
    end
  end
end
