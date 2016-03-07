# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  kind       :string(255)
#

class Category < ActiveRecord::Base
	has_many :products
	belongs_to :admin
end
