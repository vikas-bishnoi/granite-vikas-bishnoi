# frozen_string_literal: true

class DropCreateUser < ActiveRecord::Migration[6.1]
  def up
    drop_table :user_notifications
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
