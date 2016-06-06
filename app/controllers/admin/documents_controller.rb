module Admin
  class DocumentsController < Admin::ApplicationController
    
#    def index
#       @documents = Document.all.paginate(10, params[:page])
#    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Document.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
