class BaseController < ApplicationController
  def new
  		@blah = 1
  		#render plain: "ahahaha"
  end
  def do
  		render plain: params[:url]
  end
end
