require_relative './../test_helper'

class StringAttributeTest < MiniTest::Test
  
  def test_attribute_on_model_init
    b = Building.new name: 'test'
    assert_equal 'test', b.name
  end

  def test_attribute_on_existing_model
    b = Building.new
    b.name = 'test'
    assert_equal 'test', b.name
    assert b.name_changed?
  end
  
  def test_question_mark_method
    b = Building.new name: 'test'
    assert_equal true, b.name?
  end
  
  def test_conversion
    b = Building.new name: 51
    assert_equal '51', b.name
  end

end
