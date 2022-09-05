# frozen_string_literal: true

require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def test_shouldnt_create_comment_without_task
    post comments_path, params: { comment: { content: "This is a comment", task_id: "" } }, headers: @headers
    assert_response :not_found
    response_json = response.parsed_body
    assert_equal response_json["error"], t("not_found", entity: "Task")
  end
end
