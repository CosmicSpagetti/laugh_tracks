class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name, :age, :city

  def self.find_all_by_age(age)
    Comedian.where(age: age)
  end

  def specials_count
    specials.count
  end

  def self.average_by_age
    Comedian.average(:age)
  end

end
