# frozen_string_literal: true
class PagesController < ApplicationController
  def index
    @characters = Character.all
    @weapons = Weapon.all
  end
end
