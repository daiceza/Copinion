class OpinionsController < ApplicationController
  def index
    @opinion = Opinion.all
    @newopinion = Opinion.new
  end
  def create
    @newopinion = Opinion.new(opinion_params)
    if @newopinion.save
      redirect_to root_url
    else
      render "index"
    end
  end
  def show
    @opinion = Opinion.find(params[:id])
    @res = Opinion.new
  end
  def destroy
    Opinion.find(params[:id]).destroy
    flash[:success] = "消去しました"
    redirect_to opinions_url
  end
  
  private
    def opinion_params
      params.require(:opinion).permit(:title, :text, :category)
    end
end
