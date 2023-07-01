require "test_helper"

class AsqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asq = asqs(:one)
  end

  test "should get index" do
    get asqs_url
    assert_response :success
  end

  test "should get new" do
    get new_asq_url
    assert_response :success
  end

  test "should create asq" do
    assert_difference("Asq.count") do
      post asqs_url, params: { asq: { text: @asq.text, title: @asq.title } }
    end

    assert_redirected_to asq_url(Asq.last)
  end

  test "should show asq" do
    get asq_url(@asq)
    assert_response :success
  end

  test "should get edit" do
    get edit_asq_url(@asq)
    assert_response :success
  end

  test "should update asq" do
    patch asq_url(@asq), params: { asq: { text: @asq.text, title: @asq.title } }
    assert_redirected_to asq_url(@asq)
  end

  test "should destroy asq" do
    assert_difference("Asq.count", -1) do
      delete asq_url(@asq)
    end

    assert_redirected_to asqs_url
  end
end
