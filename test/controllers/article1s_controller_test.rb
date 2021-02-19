require "test_helper"

class Article1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article1 = article1s(:one)
  end

  test "should get index" do
    get article1s_url
    assert_response :success
  end

  test "should get new" do
    get new_article1_url
    assert_response :success
  end

  test "should create article1" do
    assert_difference('Article1.count') do
      post article1s_url, params: { article1: { description: @article1.description, title: @article1.title } }
    end

    assert_redirected_to article1_url(Article1.last)
  end

  test "should show article1" do
    get article1_url(@article1)
    assert_response :success
  end

  test "should get edit" do
    get edit_article1_url(@article1)
    assert_response :success
  end

  test "should update article1" do
    patch article1_url(@article1), params: { article1: { description: @article1.description, title: @article1.title } }
    assert_redirected_to article1_url(@article1)
  end

  test "should destroy article1" do
    assert_difference('Article1.count', -1) do
      delete article1_url(@article1)
    end

    assert_redirected_to article1s_url
  end
end
