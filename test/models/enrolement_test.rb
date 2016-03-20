require "test_helper"

class EnrolementTest < ActiveSupport::TestCase
  def enrolement
    @enrolement ||= Enrolement.new
  end

  def test_valid
    assert enrolement.valid?
  end
end
