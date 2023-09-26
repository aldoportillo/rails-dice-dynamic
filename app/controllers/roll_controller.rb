class RollController < ApplicationController
  def roll_action
    @number = params.fetch("number").to_i
    @sides = params.fetch("sides").to_i

    @rolls = []

    @number.times{
      die = rand(1..@sides)
      @rolls.push(die)
    }

    render({:template => "outcome"})
  end
end
