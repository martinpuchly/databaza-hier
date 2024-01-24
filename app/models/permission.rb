class Permission < ApplicationRecord
  has_and_belongs_to_many :users


  validates :title, presence: {message: "}

  validates :title, presence: { message: "^Názov povolenia nemôže byť prázdny." }
  validates :main_title, presence: { message: "^Kategória povolenia nemôže byť prázdna." }
  validates :key, presence: { message: "^Kľúč povolenia nemôže byť prázdny." }
  validates :key, uniqueness: { message: "^^Kľúč povolenia sa už v databáze nachádza." }


end
