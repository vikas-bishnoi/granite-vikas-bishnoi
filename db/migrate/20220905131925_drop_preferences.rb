# frozen_string_literal: true

class DropPreferences < ActiveRecord::Migration[6.1]
  def up
    drop_table :preferences
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
