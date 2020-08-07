module Api
    module V1
        class CardsController < Api::V1::ApiController
            before_action :set_card, only: [:show, :update, :destroy]

            def index
                @cards = Card.includes(:comments, :votes).all
            end
    
            def show; end

            def create
                @card = Card.create(params_permit)
                if @card.errors.full_messages.present?
                    render json: { error: @card.errors.full_messages }, status: 400
                else
                    render :show
                end
            end
    
            def update
                @card.update(params_permit)
                if @card.errors.full_messages.present?
                    render json: { error: @card.errors.full_messages }, status: 400
                else
                    render :show
                end
            end 
    
            def destroy
                @card.destroy
                render json:{message: "card deleted"}
            end

            def set_card
                @card = Card.find(params[:id])
            end

            def params_permit
                params.permit(:title, :description, :user_id)
            end
        end
    end
end