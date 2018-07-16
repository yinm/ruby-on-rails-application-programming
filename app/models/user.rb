class User < ApplicationRecord
  validates :agreement, acceptance: { on: :create }
  validates :email, presence: { unless: :sendmail? }

  def sendmail?
    dm.blank?
  end
end
