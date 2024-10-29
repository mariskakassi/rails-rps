class ZebraController < ApplicationController
  def home
    render({ :template => "game_templates/home" })
  end

  def rock
    @player_move = "rock"
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "paper"
      @result = "lost"
    elsif @random_move == "scissors"
      @result = "won"
    else
      @result = "tied"
    end
      render({ :template => "game_templates/play" })
  end

  def paper
    @player_move = "paper"
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "scissors"
      @result = "lost"
    elsif @random_move == "rock"
      @result = "won"
    else
      @result = "tied"
    end
    render({ :template => "game_templates/play" })
    
  end

  def scissors
    @player_move = "scissors"
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "lost"
    elsif @random_move == "paper"
      @result = "won"
    else
      @result = "tied"
    end
      render({ :template => "game_templates/play" })
  end

end
