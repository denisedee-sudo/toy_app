class MicropostsController < ApplicationController
  def index
    @microposts = Micropost.all
  end

  def show
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.new(microposts_params)
    if @micropost.save
      redirect_to @micropost
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def microposts_params
    params.require(:micropost).permit(:content, :user_id)
  end
end
