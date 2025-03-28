# typed: strict
# frozen_string_literal: true

module Httpsensible
  class Client
    class Response
      attr_reader :response

      def initialize(response)
        @response = response
      end

      # sig { params(response: T.any(HTTPX::Response, HTTPX::ErrorResponse)).returns(String) }
      def to_s
        case @response
        when HTTPX::Response
          "#{@response.status}, #{@response.headers}, #{@response.body}"
        when HTTPX::ErrorResponse
          @response.error.message
        else
          ""
        end
      end

      # sig { params(response: T.any(HTTPX::Response, HTTPX::ErrorResponse)).returns(T::Boolean) }
      def parsed_json_body
        JSON.parse(raw_body || "")
      rescue JSON::ParserError
        {}
      end

      def raw_body
        @raw_body ||= @response.body.read
      end

      # sig { params(response: T.any(HTTPX::Response, HTTPX::ErrorResponse)).returns(T::Boolean) }
      def unavailable?
        return true if @response.nil?
        return true if @response.is_a?(HTTPX::ErrorResponse)
        return false if (200..299).cover?(@response.status)

        true if (400..599).cover?(@response.status)
      end

      def available?
        !unavailable?
      end
    end
  end
end
