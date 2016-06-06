class Code < ActiveRecord::Base
	attr_accessor :image_file_name
	belongs_to :document
	has_attached_file :image, styles: { medium: "200x200#", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
