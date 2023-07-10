# frozen_string_literal: true

require "test_helper"

class TestHttpsensibleClient < Minitest::Test
  def teardown
    WebMock.reset!
  end

  def test_that_it_instantiates
    client = Httpsensible::Client.new

    assert_instance_of(Httpsensible::Client, client)

    stub_request(:get, "https://yetto.app/")
      .with(
        headers: {
          "Accept" => "application/json",
          "Content-Type" => "application/json",
          "User-Agent" => "httpx.rb/#{HTTPX::VERSION}",
        },
      )
      .to_return(status: 200, body: "", headers: {})

    client.get("https://yetto.app")

    assert_requested(:get, "https://yetto.app/", times: 1)
  end

  def test_that_it_allows_custom_ua
    client = Httpsensible::Client.new(user_agent: "test")

    assert_instance_of(Httpsensible::Client, client)

    stub_request(:get, "https://yetto.app/")
      .with(
        headers: {
          "Accept" => "application/json",
          "Content-Type" => "application/json",
          "User-Agent" => "test",
        },
      )
      .to_return(status: 200, body: "", headers: {})

    client.get("https://yetto.app")

    assert_requested(:get, "https://yetto.app/", times: 1)
  end

  def test_that_it_will_make_request_with_headers
    client = Httpsensible::Client.new

    stub_request(:get, "https://yetto.app/")
      .with(
        headers: {
          "Accept" => "application/json",
          "Content-Type" => "application/json",
          "foo" => "BAR!",
        },
      )
      .to_return(status: 200, body: "", headers: {})

    client.with_headers(foo: "BAR!").get("https://yetto.app")

    assert_requested(:get, "https://yetto.app/", times: 1)
  end
end
