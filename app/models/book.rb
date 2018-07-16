class Book < ApplicationRecord
  validates :isbn,
    presence: { message: 'は必須です' },
    uniqueness: { allow_blank: true, message: '%{value}は一意でなければなりません' },
    length: { is: 17, allow_blank: true, message: '%{value}は%{count}桁でなければなりません' },
    isbn: true
  validates :title,
    presence: true,
    length: { minimum: 1, maximum: 100 }
  validates :price,
    numericality: { only_integer: true, less_than: 10000 }
  validates :publish,
    inclusion: { in: ['技術評論社', '翔泳社', '秀和システム', '日経BP社', 'ソシム'] }
end
