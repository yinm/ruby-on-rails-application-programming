class User < ApplicationRecord
  validates :agreement, acceptance: { on: :create }
  with_options unless: :sendmail? do |dm|
    dm.validates :email, presence: true
    dm.validates :roles, presence: true
  end

  def sendmail?
    dm.blank?
  end
end
