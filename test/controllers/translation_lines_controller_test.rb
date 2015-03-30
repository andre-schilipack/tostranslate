require 'test_helper'

class TranslationLinesControllerTest < ActionController::TestCase
  setup do
    @translation_line = translation_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translation_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translation_line" do
    assert_difference('TranslationLine.count') do
      post :create, translation_line: { description: @translation_line.description, translation_file_id: @translation_line.translation_file_id, translation_id: @translation_line.translation_id }
    end

    assert_redirected_to translation_line_path(assigns(:translation_line))
  end

  test "should show translation_line" do
    get :show, id: @translation_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translation_line
    assert_response :success
  end

  test "should update translation_line" do
    patch :update, id: @translation_line, translation_line: { description: @translation_line.description, translation_file_id: @translation_line.translation_file_id, translation_id: @translation_line.translation_id }
    assert_redirected_to translation_line_path(assigns(:translation_line))
  end

  test "should destroy translation_line" do
    assert_difference('TranslationLine.count', -1) do
      delete :destroy, id: @translation_line
    end

    assert_redirected_to translation_lines_path
  end
end
