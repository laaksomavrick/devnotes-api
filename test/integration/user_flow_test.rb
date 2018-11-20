require "test_helper"

class UserFlowTest < ActionDispatch::IntegrationTest
  test "can create a user" do
    post "/api/users",
         xhr: true,
         params: {
           user: {
             email: "laakso.mavrick@gmail.com",
             password: "password",
           },
         }

    json = JSON.parse(@response.body)

    assert_response :success
    assert_equal "laakso.mavrick@gmail.com", json["email"]
    assert_not_nil json["password_digest"]
  end
end
