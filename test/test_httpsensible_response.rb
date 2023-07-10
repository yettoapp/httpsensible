# frozen_string_literal: true

require "test_helper"

class TestHttpsensibleResponse < Minitest::Test
  def setup
    @request = HTTPX::Request.new("GET", "https://yetto.app")
  end

  def test_that_it_can_to_s_response
    http_response = HTTPX::Response.new(@request, 200, "2.0", {})
    response = Httpsensible::Client::Response.new(http_response)

    assert_equal("200, {}, ", response.to_s)
  end

  def test_that_it_can_to_s_error_response
    http_response = HTTPX::ErrorResponse.new(@request, RuntimeError.new("oh dear"), {})
    response = Httpsensible::Client::Response.new(http_response)

    assert_equal("oh dear", response.to_s)
  end

  def test_that_it_knows_availability
    http_response = HTTPX::Response.new(@request, 200, "2.0", {})
    response = Httpsensible::Client::Response.new(http_response)

    assert_predicate(response, :available?)
  end

  def test_that_it_knows_unavailability
    http_response = HTTPX::Response.new(@request, 404, "2.0", {})
    response = Httpsensible::Client::Response.new(http_response)

    assert_predicate(response, :unavailable?)
  end

  def test_that_it_can_parse_json_body
    http_response = HTTPX::Response.new(@request, 200, "2.0", { "x-with-body" => "true" })
    http_response << { foo: "wow!" }.to_json

    response = Httpsensible::Client::Response.new(http_response)

    assert_equal({ "foo" => "wow!" }, response.parsed_json_body)
  end

  def test_that_it_can_save_itself_from_failure_to_parse_json_body
    http_response = HTTPX::Response.new(@request, 200, "2.0", { "x-with-body" => "true" })
    http_response << "OK"
    response = Httpsensible::Client::Response.new(http_response)

    assert_empty(response.parsed_json_body)
  end

  def test_that_it_can_always_get_raw_body
    http_response = HTTPX::Response.new(@request, 200, "2.0", { "x-with-body" => "true" })
    http_response << "OK"
    response = Httpsensible::Client::Response.new(http_response)

    assert_equal("OK", response.raw_body)
  end
end
