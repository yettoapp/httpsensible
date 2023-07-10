# typed: strict
# frozen_string_literal: true

require_relative "httpsensible/version"
require_relative "httpsensible/client"
require_relative "httpsensible/jwt"

module Httpsensible
  class Error < StandardError; end
end
