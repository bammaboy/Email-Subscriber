class Email < ApplicationRecord
  validates :address, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z]+\.[A-Za-z]+\z/}
end
