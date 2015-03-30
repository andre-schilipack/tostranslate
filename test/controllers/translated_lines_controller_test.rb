require 'test_helper'

class TranslatedLinesControllerTest < ActionController::TestCase
  setup do
    @translated_line = translated_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translated_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translated_line" do
    assert_difference('TranslatedLine.count') do
      post :create, translated_line: { description: @translated_line.description, language_id: @translated_line.language_id, translation_line_id: @translated_line.translation_line_id }
    end

    assert_redirected_to translated_line_path(assigns(:translated_line))
  end

  test "should show translated_line" do
    get :show, id: @translated_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translated_line
    assert_response :success
  end

  test "should update translated_line" do
    patch :update, id: @translated_line, translated_line: { description: @translated_line.description, language_id: @translated_line.language_id, translation_line_id: @translated_line.translation_line_id }
    assert_redirected_to translated_line_path(assigns(:translated_line))
  end

  test "should destroy translated_line" do
    assert_difference('TranslatedLine.count', -1) do
      delete :destroy, id: @translated_line
    end

    assert_redirected_to translated_lines_path
  end
end
