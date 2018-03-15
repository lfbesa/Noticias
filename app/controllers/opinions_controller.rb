class OpinionsController < ApplicationController
  def create
    @news = News.find(params[:news_id])
    @opinion = @news.opinions.create(opinion_params)
    redirect_to news_path(@news)
  end

  private
    def opinion_params
      params.require(:opinion).permit(:usuario, :cuerpo)
    end
end
