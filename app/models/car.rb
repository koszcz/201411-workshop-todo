class Car < ActiveRecord::Base
	validates :brand, presence: true
	validates :model, presence: true

	def full_name
		# "#{brand} #{model}"
		[ brand, model ].join(" ")
	end
end
