require 'test_helper'

class TranslationFilesControllerTest < ActionController::TestCase
  setup do
    @translation_file = translation_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translation_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translation_file" do
    assert_difference('TranslationFile.count') do
      post :create, translation_file: { name: @translation_file.name }
    end

    assert_redirected_to translation_file_path(assigns(:translation_file))
  end

  test "should show translation_file" do
    get :show, id: @translation_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translation_file
    assert_response :success
  end

  test "should update translation_file" do
    patch :update, id: @translation_file, translation_file: { name: @translation_file.name }
    assert_redirected_to translation_file_path(assigns(:translation_file))
  end

  test "should destroy translation_file" do
    assert_difference('TranslationFile.count', -1) do
      delete :destroy, id: @translation_file
    end

    assert_redirected_to translation_files_path
  end
end
