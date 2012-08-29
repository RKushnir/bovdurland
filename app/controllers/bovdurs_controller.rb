class BovdursController < ApplicationController
  respond_to :html, :json

  def index
    respond_with(Bovdur.all)
  end

  def create
    respond_with(Bovdur.create(params[:bovdur]))
  end
end
