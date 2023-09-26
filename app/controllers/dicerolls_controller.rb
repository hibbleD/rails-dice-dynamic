class DicerollsController < ApplicationController
  def twosix
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    
    render("/dice_templates/twosix")
  end

  def twoten
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end
    
    render("/dice_templates/twoten")
  end

  def onetwenty
    @rolls = []

    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end

    render("/dice_templates/onetwenty")
  end

  def fivefour 
    @rolls = []

    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end

    render("/dice_templates/fivefour")
  end

  def fiftysix
    @rolls = []

    50.times do 
      @die = rand(1..6)
      @rolls.push(@die)
    end

      render("/dice_templates/fiftysix")
  end

  def any

    @rolls = []

    @quantity = params.fetch("quantity").to_i

    @value = params.fetch("value").to_i

    @quantity.times do
      @die = rand(1..@value)
      @rolls.push(@die)
  end

  render("/dice_templates/any")
  end
end
