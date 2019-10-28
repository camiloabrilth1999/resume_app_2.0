class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :assign_default_role
  has_many :users_ocupations
  has_many :users_academic_modalities
  has_many :academic_modalities, through: :users_academic_modalities
  has_many :users_idioms
  has_many :basic_middle_educations
  has_many :employments
  belongs_to :nacionality_type
  belongs_to :city, optional: true
  belongs_to :military_card_type
  belongs_to :national_identifier_type
  belongs_to :gender

  validates :name, presence: true
  validates :first_surname, presence: true
  validates :second_surname, presence: true
  validates :number_phone, presence: true
  validates :birth_date, presence: true
  validates :country_nationality, presence: true
  validates :number_military_card, presence: true, uniqueness: true
  validates :dm_military_card, presence: true
  validates :number_national_identifier, presence: true, uniqueness: true
  validates :address, presence: true


  def assign_default_role
    self.add_role(:default) if self.roles.blank?
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
