# frozen_string_literal: true

require "test_helper"

class TestHttpsensible < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil(::Httpsensible::VERSION)
  end

  def test_it_instantiates
    Httpsensible::Client.new
  end
end
