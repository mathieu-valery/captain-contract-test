class WeaponsController < ApplicationController
  def info
    @weapon = Weapon.find(params[:id])

    render partial: 'partials/weapon_info'
  end
end
