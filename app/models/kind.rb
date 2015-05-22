class Kind < ActiveRecord::Base

	belongs_to :admin_user

	has_many :places

end
