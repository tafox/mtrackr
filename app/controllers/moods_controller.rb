class MoodsController < ApplicationController
  def index
    @moods = Mood.all
  end

  def new
    @mood = Mood.new
  end

  def show
    @mood = Mood.find(params[:id])
  end

  def create
    @mood = Mood.new(mood_params)
    if @mood.save
      redirect_to @mood
    else
      render 'new'
    end
  end

  def destroy
  end

  private
    
    def mood_params
      params.require(:mood).permit(:mood, :emotion, :stability, :focus)
    end
    
end
