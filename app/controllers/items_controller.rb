class ItemsController < ApplicationController

before_action :move_to_index, except: :index

def index
 @items = Item.all
end

def new
  @item = Item.new
end

def create
  current_user.items.create!(item_params)
end

def move_to_index
 redirect_to action: :index unless user_signed_in?
end

def item_params
  params.require(:item).permit(:name, :price)
end
end