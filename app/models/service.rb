class Service < ApplicationRecord
  has_many :checks

  def address(team)
    self.address_format.sub('?', team.number.to_s)
  end
end