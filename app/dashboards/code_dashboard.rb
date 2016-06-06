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
    env: Field::String,
    domaine: Field::String,
    categorie_metier: Field::String,
    type_doc: Field::String,
    client_string: Field::String,
    statut_client: Field::String,
    image: PaperclipField,
    image_file_name: Field::String,
    image_content_type: Field::String,
    image_file_size: Field::Number,
    image_updated_at: Field::DateTime,
    order: Field::Number,
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
    :id,
    :env,
    :domaine,
    :categorie_metier,
    :type_doc,
    :client_string,
    :statut_client,
    :image,
  #je retire order pour ne pas l'avoir dans le formulaire
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :document,
    :id,
    :env,
    :domaine,
    :categorie_metier,
    :type_doc,
    :client_string,
    :statut_client,
    :image,
    :order,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :document,
    :env,
    :domaine,
    :categorie_metier,
    :type_doc,
    :client_string,
    :statut_client,
    :image,
    :order,
  ].freeze

  # Nous décommentons ce qui suit pour afficher le code dans l'admin des codes
    def display_resource(code)
      code.image
    end
end
