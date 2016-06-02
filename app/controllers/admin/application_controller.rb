# Ctrleur crée grace à gem administrate. Ligne http-basic ajouté comme conseillé sur la doc de la gem. afin de préserver les codes d'authentification.


module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin
    http_basic_authenticate_with name: ENV.fetch("ADMIN_NAME"), password: ENV.fetch("ADMIN_PASSWORD")

    def authenticate_admin
      # TODO Add authentication logic here.
    end


    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
