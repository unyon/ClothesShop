class Product < ActiveRecord::Base

	belongs_to :admin
	belongs_to :category

	Sizes = {
		'0'      => '0',
		'1'      => '1',
		'2'      => '2',
		'3'  	 => '3',
		'4'   	 => '4',
		'5'   	 => '5',
		'6'    	 => '6',
		'7'  	 => '7',
		'8'   	 => '8',
		'9'   	 => '9',
		'10'     => '10',
		'Small'  => 'Small',
		'Medium' => 'Medium',
		'Large'  => 'Large'
	}

	Kinds = {
		'denim'  			=> 'denim',
		'sweaters'  		=> 'sweaters',
		'shirts & tops'  	=> 'tops',
		'tees & more' 		=> 'tees',
		'jackets & coats'   => 'jackets_coats',
		'pants & shorts'    => 'pants_shorts',
		'dresses'   		=> 'dresses',
		'skirts'   			=> 'skirts',
		'swim & beachwear'  => 'swim_beachwear',
		'shoes & boots'   	=> 'shoes_boots',
		'bags'   			=> 'bags',
		'jewelry'   		=> 'jewelry'
	}

	Genders = {
		'Woman'  	=> 'Woman',
		'Men'  		=> 'Men',
		'Boys'  	=> 'Boys', 
		'Girls' 	=> 'Girls',
		'Baby' 		=> 'Baby'
	}




end

