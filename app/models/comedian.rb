class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name, :age, :birthplace

  def self.show_by_age(age)
    Comedian.where(age: age)
  end

end
