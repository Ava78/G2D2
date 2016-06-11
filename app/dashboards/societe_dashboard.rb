require "administrate/base_dashboard"

class SocieteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    
    id: Field::Number,
    nom: Field::String,
    adresse: Field::String, 
    environnement: Field::String   
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :nom,
    :adresse, 
    :environnement,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :nom,
    :adresse, 
    :environnement,
    :created_at,
    :updated_at,
  ].freeze

  #
  FORM_ATTRIBUTES = [
    :nom,
    :adresse,
    :environnement, 
  ].freeze

  # Nous décommentons ce qui suit pour afficher le code dans l'admin des codes
    def display_resource(code)
      societe.nom
    end
end
