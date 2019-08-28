class StocksController < ApplicationController
    before_action :set_stock, only: [:show, :edit, :update, :destroy]
  
    def index
      @stocks = Stock.all
    end
  
    def show
    end
  
    def new
      @stock = Stock.new
    end
  
    def edit
    end
  
    def create
      @stock = Stock.new(stock_params)
  
      respond_to do |format|
        if @stock.save
          format.html { redirect_to @stock, notice: 'stock was successfully created.' }
          format.json { render :show, status: :created, location: @stock }
        else
          format.html { render :new }
          format.json { render json: @stock.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @stock.update(stock_params)
          format.html { redirect_to @stock, notice: 'stock was successfully updated.' }
          format.json { render :show, status: :ok, location: @store }
        else
          format.html { render :edit }
          format.json { render json: @stock.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
      @stock.destroy
      respond_to do |format|
        format.html { redirect_to stocks_url, notice: 'Store was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_stock
        @stock = Stock.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def stock_params
        params.require(:stock).permit(:stock, :book_id, :store_id)
      end
  end
  