class CodesController < ApplicationController
 require 'rqrcode'

  def index
    @codes = Code.all
    @qr = RQRCode::QRCode.new( 'https://github.com/whomwah/rqrcode', :size => 4, :level => :h )
  end

  def create

  end

  def show
  end

  def edit
  end

  def destroy
  end
end
