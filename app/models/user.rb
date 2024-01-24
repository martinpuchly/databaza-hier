class User < ApplicationRecord
  has_and_belongs_to_many :permissions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :username, presence: { message: "^Používateľské meno nemôže byť prázdne." }
  validates :username, uniqueness: { message: "^Používateľské meno sa už databáze nachádza." }

  validates :email, presence: { message: "^Emailová adresa nemôže byť prázdna." }
  validates :email, uniqueness: { message: "^Emailová adresa sa už v databáze nachádza." }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "^Emailová adresa nemá správny formát." } 

  validates :password, length: { in: 6..20, message: "^Heslo musí byť dlhé 6 až 20 zanakov." }
  validates :password, confirmation: { message: "^Heslo a potvrdenie hesla sa musia zhodovať.", on: :create }

  
  
end
