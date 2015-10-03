class Company < ActiveRecord::Base
    attr_accessor :users, :surveys, :name
    has_many :users
    has_many :surveys
end
