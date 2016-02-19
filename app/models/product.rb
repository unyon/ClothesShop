class Product < ActiveRecord::Base

	belongs_to :admin
	belongs_to :category

	  Sizes = {
    '1'      => 'one',
    '2'      => 'two',
    'three'  => '3',
    'four'   => '4',
    'five'   => '5',
    'six'    => '6',
    'Small'  => 'Small',
    'Medium' => 'Medium',
    'Large'  => 'Large'
  }
end

