module Api
    module V1
        class CommentController < Api::V1::ApiController

            before_action :set_comment, only: [:show, :update, :destroy]

            def index
                @comments = Comment.all
            end
    
            def show; end
  
            def create
                @comment = Comment.create(params_permit)
                if @comment.errors.full_messages.present?
                    render json: { error: @comment.errors.full_messages }, status: 400
                else
                    render :show
                end
            end
    
            def update
                @comment.update(params_permit)
                if @comment.errors.full_messages.present?
                    render json: { error: @comment.errors.full_messages }, status: 400
                else
                    render :show
                end
            end 
    
            def destroy
                @comment.destroy
                render json:{message: "comment deleted"}
            end

            def set_comment
                @comment = Comment.find(params[:id])
            end

            def params_permit
                params.permit(:description, :user_id, :card_id)
            end

        end
    end
end