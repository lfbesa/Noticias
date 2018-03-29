module Api
  module V1
    class NewsController < ApplicationController

      def index
        @news = News.all
        json_response2(@news)
      end

      def show
        json_response(News.find(params[:id]))
      end

      # POST /news
      def create
        @news = News.create!(news_params)
        json_response(@news, :created)
      end

      # PUT /news/:id
      def update
        @news = News.find(params[:id])
        @news.update(news_params)
        json_response(@news)
      end

      # DELETE /news/:id
      def destroy
        @news = News.find(params[:id])
        @news.destroy
        json_response(@news)
      end

     private

     def news_params
       # whitelist params
       params.permit(:title, :subtitle, :body)
     end

    end
  end
end
