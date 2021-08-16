class RpgController < ApplicationController

  def home
        unless session[:gold]
      session[:gold] = 0
    end
    unless session[:activities]
      session[:activities] = []
    end
    render 'home'
  end

  def house
    coins = Random.rand(2..5)
    session[:gold] += coins
    session[:activities].unshift("Earned " + coins.to_s + " gold from the house! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    redirect_to '/'
  end

  def farm
    coins = Random.rand(10..20)
    session[:gold] += coins
    session[:activities].unshift("Earned " + coins.to_s + " gold from the farm! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    redirect_to '/'
  end

  def cave
    coins = Random.rand(5..10)
    session[:gold] += coins
    session[:activities].unshift("Earned " + coins.to_s + " gold from the cave! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    redirect_to '/'
  end

  def casino
    coins = Random.rand(-50..50)
    session[:gold] += coins
    if coins <= 0
      session[:activities].unshift("Lost " + coins.abs.to_s + " gold from the casino! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    else
      session[:activities].unshift("Earned " + coins.to_s + " gold from the casino! ("+Time.now.localtime("-05:00").strftime("%Y/%m/%d %l:%M %p").to_s+")")
    end
    redirect_to '/'
  end
end
