module Api
  module V1
    class NewsController < ApplicationController

      def index
        @news = News.all
        render json: json_response2(@news)
      end

      def show
        render json: json_response(News.find(params[:id]))
      end

      # POST /news
      def create
        @news = News.create!(news_params)
        render json: json_response(@news, :created)
      end

      # PUT /news/:id
      def update
        @news = News.find(params[:id])
        @news.update(news_params)
        render json: json_response(@news)
      end

      def put
        @news = News.find(params[:id])
        @news.update(news_params2)
        render json: json_response(@news)
      end

      # DELETE /news/:id
      def destroy
        @news = News.find(params[:id])
        @news.destroy
        render json: json_response(@news)
      end

     private

     def news_params
       # whitelist params
       params.permit(:title, :subtitle, :body)
     end
     def news_params2
       # whitelist params
       params.require(:title)
       params.require(:subtitle)
       params.require(:body)
       params.permit(:title, :subtitle, :body)
     end

    end
  end
end
