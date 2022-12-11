class OrdersController < ApplicationController
    protect_from_forgery with: :null_session,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }

    rescue_from ActiveRecord::RecordNotFound, with: :order_not_found_method
    
    # GET /orders
    def index
        orders = Order.all
        render json: orders
    end
    # POST /order
    def create
        order = Order.create(order_params)
        render json: order, status: :created
    end
    # GET /order/:id
    def show
        order = create_order
        render json: order
    end
    # PATCH /order/:id
    def update
        order= create_order
        if order
          order.update(order_params)
          render json: order
        else
            render json: {error: "order not found"}, status: :not_found
        end
    end
    # DELETE /order/:id
    def destroy
        order = create_order
        order.destroy
        render json: order, status: :not_content
    end

    private

    def order_params
        params.permit(:package_type, :pick_up_location, :drop_off_location, :date, :receiver_name, :number_of_kgs)
    end

    def order_not_found_method
        render json: {error: "order not found"}, status: :not_found
    end

    def create_order
        Order.find(params[:id])
    end
end
