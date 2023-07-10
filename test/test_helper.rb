# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))
require "httpsensible"

require "debug" if ENV.fetch("DEBUG", false)
require "webmock"
require "httpx/adapters/webmock"
include WebMock::API

WebMock.enable!

require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
