# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  url                :string(255)
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ActiveRecord::Base

	belongs_to :user  #Agregarle un atributo a los productos para poder acceder al usuario, y con ese obtener los datos de ese usuario. Asi relaciono Producto y Usuario.
	has_many :comments 
	has_many :votes

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}
	
	validates :name, presence: true
	validates :url, presence: true
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def voted_by?(user)
	  votes.exists?(user: user)
	end	

end
