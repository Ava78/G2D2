class Document < ActiveRecord::Base
	has_many :codes
	has_many :societes
	
	# la ligne defaut_url permet de prévoir une image par taille (medium ou thumb) en cas d'image manquante
	# la taille de chaque image est bloquée à 200 x 200 grâce au # après la taille

	# concerne Paperclip et Image Magick pour affichage des vignettes et images 
	has_attached_file :image, styles: { medium: "200x200#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


end
