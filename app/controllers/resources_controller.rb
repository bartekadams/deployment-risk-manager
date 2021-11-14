# frozen_string_literal: true

class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.toggle!(:available)
    broadcast
    redirect_to resources_path
  end

  private

  def broadcast
    ActionCable.server.broadcast("chat_Best Room", { body: "This Room is Best Room." })
  end
end
