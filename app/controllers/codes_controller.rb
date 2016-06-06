class CodesController < ApplicationController
 require 'rqrcode'

  def index
    @codes = Code.all    
  end

  def new
  end


  def show
  end

  def edit
  end

  def destroy
  end
end
