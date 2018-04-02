module Api
  module V1
    class OpinionsController < ApplicationController

      before_action :set_news
      before_action :set_news_opinion, only: [:show, :update, :destroy]

      # GET /news/:news_id/opinions
      def index
        response.headers['Content-Type'] = 'application/json'
        render json: json_response4(@news.opinions)
      end

      # GET /news/:news_id/opinions/:id
      def show
        response.headers['Content-Type'] = 'application/json'
        render json: json_response3(@opinion)
      end

      # POST /news/:news_id/opinions
      def create
        response.headers['Content-Type'] = 'application/json'
        @op = @news.opinions.create!(opinion_params)
        render json: json_response3(@op, :created), status: :created
      end

      # PUT /news/:news_id/opinions/:id
      def update
        response.headers['Content-Type'] = 'application/json'
        @opinion.update(opinion_params)
        render json: json_response3(@opinion)
      end

      # DELETE /news/:news_id/opinions/:id
      def destroy
        response.headers['Content-Type'] = 'application/json'
        @opinion.destroy
        render json: json_response3(@opinion)
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
