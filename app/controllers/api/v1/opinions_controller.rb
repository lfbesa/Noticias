module Api
  module V1
    class OpinionsController < ApplicationController

      before_action :set_news
      before_action :set_news_opinion, only: [:show, :update, :destroy]

      # GET /news/:news_id/opinions
      def index
        json_response(@news.opinions)
      end

      # GET /news/:news_id/opinions/:id
      def show
        json_response(@opinion)
      end

      # POST /news/:news_id/opinions
      def create
        @op = @news.opinions.create!(opinion_params)
        json_response(@op, :created)
      end

      # PUT /news/:news_id/opinions/:id
      def update
        @opinion.update(opinion_params)
        json_response(@opinion)
      end

      # DELETE /news/:news_id/opinions/:id
      def destroy
        @opinion.destroy
        json_response(@opinion)
      end

      private

      def opinion_params
        params.permit(:author, :comment)
      end

      def set_news
        @news = News.find(params[:news_id])
      end

      def set_news_opinion
        @opinion = @news.opinions.find_by!(id: params[:id]) if @news
      end
    end
  end
end
