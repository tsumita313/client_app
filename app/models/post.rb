class Post < ApplicationRecord
  validates :content, {presence: true}
  # validates :address, {presence: true}
  # validates :phonenumber, {presence: true}
  # validates :agreement, {presence: true}
  # validates :remarka, {presence: true}

  validates :content, {length: {maximum:100}}
  # validates :address, {length: {maximum:100}}
  # validates :phonenumber, {length: {maximum:100}}
  # validates :agreement, {length: {maximum:100}}
  # validates :remarka, {length: {maximum:500}}
end
