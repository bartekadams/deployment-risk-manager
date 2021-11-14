# frozen_string_literal: true

class Resource < ApplicationRecord
  def toggle_availability
    toggle!(:available)

    ActionCable.server.broadcast(
      "resource_new_state",
      { id: id, available: available },
    )
  end
end
