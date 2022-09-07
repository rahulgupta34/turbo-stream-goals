class TurboCrud < ApplicationRecord

    validates :name, :email, :addess, presence: true

end
