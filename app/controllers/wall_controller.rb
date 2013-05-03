class WallController < ApplicationController
  def index
  	@status_updates = StatusUpdate.all
  end
end
