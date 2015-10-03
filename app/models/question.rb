class Question < ActiveRecord::Base
    belongs_to :template
    has_many :answers
end
