require 'test_helper'

class OpinionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @opinion = Opinion.new(title: "テスト用", category: "生活",
    text:"テスト")
  end

  test "should be valid" do
    assert @opinion.valid?
  end
end
