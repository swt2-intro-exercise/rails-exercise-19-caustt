class AuthorsController < ApplicationController
  def index
  end
  def new
  end
  def create
  	@author = Author.new(post_params)

  	@author.save
  	redirect_to root_path, notice: 'Success!'
  end

  private def post_params
  	params.require(:author).permit(:first_name, :last_name, :homepage)
  end
end
