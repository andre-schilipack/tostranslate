require 'test_helper'

class TranslatedFilesControllerTest < ActionController::TestCase
  setup do
    @translated_file = translated_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translated_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translated_file" do
    assert_difference('TranslatedFile.count') do
      post :create, translated_file: { name: @translated_file.name, translation_file_id: @translated_file.translation_file_id }
    end

    assert_redirected_to translated_file_path(assigns(:translated_file))
  end

  test "should show translated_file" do
    get :show, id: @translated_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translated_file
    assert_response :success
  end

  test "should update translated_file" do
    patch :update, id: @translated_file, translated_file: { name: @translated_file.name, translation_file_id: @translated_file.translation_file_id }
    assert_redirected_to translated_file_path(assigns(:translated_file))
  end

  test "should destroy translated_file" do
    assert_difference('TranslatedFile.count', -1) do
      delete :destroy, id: @translated_file
    end

    assert_redirected_to translated_files_path
  end
end
