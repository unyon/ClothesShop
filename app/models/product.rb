# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  price       :integer
#  created_at  :datetime
#  updated_at  :datetime
#  —force      :string(255)
#  brand       :string(255)
#  gender      :string(255)
#  condition   :string(255)
#  sale        :boolean
#  photo       :string(255)
#  category_id :integer
#  size_id     :integer
#

class Product < ActiveRecord::Base

	mount_uploader :photo, PhotoUploader

	belongs_to :admin
	belongs_to :category
	belongs_to :size
	belongs_to :cart

	include RankedModel
	ranks :row_order


	Genders = {
		'Women'  	=> 'Women',
		'Men'  		=> 'Men',
		'Boys'  	=> 'Boys', 
		'Girls' 	=> 'Girls',
		'Baby' 		=> 'Baby'
	}

	Conditions = {
		'Used'  	=> 'Used',
		'New'  		=> 'New',
		'New with tags'  	=> 'New with tags'
	}


		def self.search(search)
	  	if search
	  		where('title iLIKE ?', "%#{search}%") || where('description iLIKE ?', "%#{search}%")
		else	
			all
		end
	end

end

