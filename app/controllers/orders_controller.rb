class OrdersController < ApplicationController

  def index
    @orders = Order.includes(:product).all
  end

  def show
    @orders = Order.includes(:product).all
  end

  def new
  end

  def create
  end

  def destroy
  end

  before_action :authenticate_user!

end