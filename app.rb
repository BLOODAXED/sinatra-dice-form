require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:roll, {:layout => :layout})
end

get("/process_roll") do

  @rolls = []
  @dice = params["dice"].to_i
  @sides = params["sides"].to_i

  @dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:process_roll, {:layout => :layout} )

end
