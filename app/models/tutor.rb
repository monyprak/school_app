class Tutor < ActiveRecord::Base
	has_and_belongs_to_many :designatories
	has_and_belongs_to_many :skillsets
	has_and_belongs_to_many :languages
end
