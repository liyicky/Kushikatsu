class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.create!(portfolio_params)
    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully updated.' }
      end
    end
  end

  def show
  end

end

private

def set_portfolio
  @portfolio = Portfolio.find(params[:id])
end

def portfolio_params
  params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
end
