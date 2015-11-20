# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  url         :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Product < ActiveRecord::Base

	belongs_to :user  #Agregarle un atributo a los productos para poder acceder al usuario, y con ese obtener los datos de ese usuario.
	
	validates :name, presence: true
	validates :url, presence: true

end
