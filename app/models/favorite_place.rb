class FavoritePlace < ActiveRecord::Base
	has_one :favorite, as: :favorited, dependent: :destroy
end
