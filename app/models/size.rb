# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Size < ActiveRecord::Base
	has_many :products
end
