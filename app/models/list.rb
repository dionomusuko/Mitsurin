class List < ApplicationRecord

  validates :name, presence: true

  validates :janru, presence: true

  validates :coment, presence: true

  validates :icon, presence:  true
  validates :price, presence: true






end

