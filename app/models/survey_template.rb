class SurveyTemplate < ActiveRecord::Base
    belongs_to :survey
    has_many :questions
end
