class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.update(trainer_id: current_trainer.id)
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    new_health = pokemon.health - 10
    pokemon.update(health:new_health)
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to train_path(pokemon.trainer.id)
  end

  def heal
    pokemon = Pokemon.find(params[:id])
    new_health = pokemon.health + 10
    pokemon.update(health: new_health)
    pokemon.save
    redirect_to train_path(pokemon.trainer.id)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new
    pokemon.trainer_id = current_trainer.id
    pokemon.health = 100
    pokemon.level = 1
    pokemon.update(poke_params)
    pokemon.save
    if pokemon.persisted?
      redirect_to train_path(pokemon.trainer_id)
    else
      redirect_to pokemon_new_path
      flash[:error] = pokemon.errors.full_messages.to_sentence
    end
  end

  def poke_params
    params.require(:pokemon).permit(:name)
  end
end
