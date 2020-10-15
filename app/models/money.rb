class Money < ApplicationRecord

    belongs_to :user
    belongs_to :vault
    
end
