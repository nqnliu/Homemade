class Survey < ActiveRecord::Base
    has_many :responses
    has_one :survey_template
end
