class Order < ActiveRecord::Base

	belongs_to :product

	def paypal_url(return_path)
    	values = {
        business: "merchant@gotealeaf.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        invoice: id,
        amount: roductp.price,
        item_name: product.title,
        item_number: product.id,
        quantity: '1'
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
