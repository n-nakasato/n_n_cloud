require 'test_helper'

class Graph2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graph2 = graph2s(:one)
  end

  test "should get index" do
    get graph2s_url
    assert_response :success
  end

  test "should get new" do
    get new_graph2_url
    assert_response :success
  end

  test "should create graph2" do
    assert_difference('Graph2.count') do
      post graph2s_url, params: { graph2: { humi: @graph2.humi, temp: @graph2.temp, time: @graph2.time } }
    end

    assert_redirected_to graph2_url(Graph2.last)
  end

  test "should show graph2" do
    get graph2_url(@graph2)
    assert_response :success
  end

  test "should get edit" do
    get edit_graph2_url(@graph2)
    assert_response :success
  end

  test "should update graph2" do
    patch graph2_url(@graph2), params: { graph2: { humi: @graph2.humi, temp: @graph2.temp, time: @graph2.time } }
    assert_redirected_to graph2_url(@graph2)
  end

  test "should destroy graph2" do
    assert_difference('Graph2.count', -1) do
      delete graph2_url(@graph2)
    end

    assert_redirected_to graph2s_url
  end
end
