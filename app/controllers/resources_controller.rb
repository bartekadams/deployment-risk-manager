# frozen_string_literal: true

class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.toggle!(:available)
    redirect_to resources_path
  end
end
