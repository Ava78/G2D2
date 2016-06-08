class CodesController < ApplicationController
 require 'rqrcode'

  def index
    @codes = Code.all     
  end

  def create
    Code.create title: params[:title], description: params[:description]
    redirect_to new_admin_code_path
  end

  def show
    #

    @code = Code.joins(:document)
                .where(
                  'documents.slug' => params[:slug_document],
                  'slug' => params[:slug_code]
                  ).first
    render text: @code.document.client



  end

  


  
end
