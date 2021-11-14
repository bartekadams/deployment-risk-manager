# frozen_string_literal: true

class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def update
    resource = Resource.find(params[:id])
    resource.toggle!(:available)
    broadcast_new_state(resource)
    head :ok
  end

  private

  def broadcast_new_state(resource)
    ActionCable.server.broadcast(
      "resource_new_state",
      { id: resource.id, available: resource.available },
    )
  end
end
