class User < ApplicationRecord
  has_many :posts
  #validates_uniqueness_of :add_name
  validate :full_name_uniqueness

	def full_name_uniqueness
    if User.exists?(first_name: first_name, last_name: last_name)
      errors.add :base, "#{add_name} already exists"
    end
	end

 private

  def add_name
   "#{first_name} #{ last_name}"
  end

end
