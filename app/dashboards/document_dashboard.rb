require "administrate/base_dashboard"

class DocumentDashboard < Administrate::BaseDashboard
  
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    image: PaperclipField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
    image_file_name: Field::String,
    image_content_type: Field::String,
    image_file_size: Field::Number,
    image_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :image,
    :slug,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :title,
    :description,
    :image,
    :slug,
   
  ].freeze

  
  FORM_ATTRIBUTES = [
    :title,
    :description,
    :image,
    :slug,
    :image_updated_at,
  ].freeze

  # Nous avons décommenter ce qui suit pour que le titre du doc s'affiche dans l'administration des documents 
  def display_resource(document)
    document.title    
  end
end
