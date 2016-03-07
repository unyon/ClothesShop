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

module ProductsHelper
end
