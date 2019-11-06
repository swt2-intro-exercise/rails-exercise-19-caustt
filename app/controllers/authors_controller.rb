class AuthorsController < ApplicationController
  def index

  	@authors = Author.all
  end
  def new
  	@author = Author.new()
  end
  def create
  	@author = Author.new(post_params)

  	if @author.save
  	  redirect_to @author
  	else
  		render 'new'
  	end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def show
  	@author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if(@author.update(post_params))
      redirect_to @author 
    else
      render :new
    end
  end


  private def post_params
  	params.require(:author).permit(:first_name, :last_name, :homepage)
  end
end
