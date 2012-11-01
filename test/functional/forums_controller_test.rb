require 'test_helper'

class ForumsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Forum.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Forum.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to forums_url
  end
end
