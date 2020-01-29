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
  private
    def opinion_params
      params.require(:opinion).permit(:title, :text)
    end
end
