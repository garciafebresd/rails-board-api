module Api
    module V1
        class VotesController < Api::V1::ApiController

            before_action :set_comment, only: [:show, :update, :destroy]

            def index
                @votes = Vote.all
            end
    
            def show; end
  
            def create
                @vote = Vote.create(params_permit)
                if @vote.errors.full_messages.present?
                    render json: { error: @vote.errors.full_messages }, status: 400
                else
                    render :show
                end
            end
    
            def update
                @vote.update(params_permit)
                if @vote.errors.full_messages.present?
                    render json: { error: @vote.errors.full_messages }, status: 400
                else
                    render :show
                end
            end 
    
            def destroy
                @vote.destroy
                render json:{message: "vote deleted"}
            end

            def set_comment
                @vote = Vote.find(params[:id])
            end

            def params_permit
                params.permit(:vote, :user_id, :card_id)
            end
        end
    end
end