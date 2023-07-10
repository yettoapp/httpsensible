# typed: strict
# frozen_string_literal: true

require "jwt"

module Httpsensible
  module JWT
    JWT_ALGORITHM = "RS256"

    class << self
      def encode_jwt(pem, iss, iat: Time.now.to_i - 60, exp: Time.now.to_i + (10 * 60))
        private_key = OpenSSL::PKey::RSA.new(pem)
        payload = {
          # issued at time, 60 seconds in the past to allow for clock drift
          iat: iat,
          # JWT expiration time
          exp: exp,
          # Identifier
          iss: iss,
        }

        ::JWT.encode(payload, private_key, JWT_ALGORITHM)
      end
    end
  end
end
