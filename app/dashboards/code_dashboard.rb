require "administrate/base_dashboard"

class CodeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    document: Field::BelongsTo,
    id: Field::Number,
    environnement: Field::String,
    domaine: Field::String,
    categorie: Field::String,
    type_doc: Field::String,
    client: Field::String,
    statut: Field::String,
    image: PaperclipField,
    image_file_name: Field::String,
    image_content_type: Field::String,
    image_file_size: Field::Number,
    image_updated_at: Field::DateTime,
    position: Field::Number,
    order: Field::Number,
    slug: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :document,
    :environnement,
    :domaine,
    :categorie,
    :client,
    :statut,
    :slug,
    :position,
    :image,
  #je retire order pour ne pas l'avoir dans le formulaire
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :document,
    :environnement,
    :domaine,
    :categorie,
    :client,
    :statut,
    :image,
    :slug,
    :created_at,
    :updated_at,
  ].freeze

  #
  FORM_ATTRIBUTES = [
    :document,
    :environnement,
    :domaine,
    :categorie,
    :client,
    :statut,
    :image,
    :position,
    
    
  ].freeze

  # Nous décommentons ce qui suit pour afficher le code dans l'admin des codes
    def display_resource(code)
      code.image


    end
end
