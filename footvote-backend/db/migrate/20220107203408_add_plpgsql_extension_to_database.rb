# frozen_string_literal: true

class AddPlpgsqlExtensionToDatabase < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'plpgsql'
  end
end
