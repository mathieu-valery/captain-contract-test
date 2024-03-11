class CharactersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def info
    @character = Character.find(params[:id])

    render partial: 'partials/character_info'
  end

  def fight
    fight_service = FightService.new([fight_params[:character_1_id], fight_params[:character_2_id]],
                                     [fight_params[:weapon_1_id], fight_params[:weapon_2_id]])
    @results = fight_service.perform
    render partial: 'partials/results_info', locals: { results: @results }
  end

  private

  def fight_params
    params.permit(:character_1_id, :character_2_id, :weapon_1_id, :weapon_2_id)
  end
end
