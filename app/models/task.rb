# frozen_string_literal: true

class Task < ApplicationRecord
  MAX_TITLE_LENGTH = 125
  validates :title, presence: true, length: { maximum: MAX_TITLE_LENGTH }
end
sql = "INSERT INTO TASKS (id, created_at, updated_at) VALUES (30, '2019-02-07 10:01:47', '2019-02-07 10:01:47')"
