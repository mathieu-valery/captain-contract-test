# app/services/fight_service.rb

class FightService
  def initialize(character_ids, weapon_ids)
    @characters = [Character.find(character_ids[0]), Character.find(character_ids[1])]
    @weapons = [Weapon.find_by(id: weapon_ids[0]), Weapon.find_by(id: weapon_ids[1])]
    @results = {
      winner: nil,
      char_1: {
        character: @characters[0],
        weapon: @weapons[0],
        hp_remaining: @characters[0].hp,
        hits_received: 0
      },
      char_2: {
        character: @characters[1],
        weapon: @weapons[1],
        hp_remaining: @characters[1].hp,
        hits_received: 0
      }
    }
  end

  def perform
    while !@results[:winner]
      fight_round(@characters[0], @characters[1], @weapons[0], @results[:char_2])
      break if check_winner(@characters[0], @results[:char_2])

      fight_round(@characters[1], @characters[0], @weapons[1], @results[:char_1])
      break if check_winner(@characters[1], @results[:char_1])
    end

    @results
  end

  private

  def fight_round(attacker, defender, weapon, result)
    result[:hp_remaining] -= attacker.attack + weapon&.attack.to_i
    result[:hits_received] += 1
  end

  def check_winner(attacker, result)
    if result[:hp_remaining] <= 0
      @results[:winner] = attacker
      true
    else
      false
    end
  end
end
