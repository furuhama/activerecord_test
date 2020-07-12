# frozen_string_literal: true

require "cases/helper"

class Console < ActiveRecord::TestCase
  def test_console
    binding.irb
  end
end
