class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show 
    @friend = Friend.find(params[:id])
  end

  def new 
    @friend = Friend.new
  end

  def create 
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to action: "index"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit 
    @friend = Friend.find(params[:id])
  end

  def update 
    @friend = Friend.find(params[:id])
    
    if @friend.update(friend_params)
      redirect to action: "index"
    else
      render :edit, status: :unprocessable_entity
    end
  end
  private

  def friend_params
    params.require(:friend).permit(:name, :job, :age)
  end
end
