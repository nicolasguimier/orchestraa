class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing, :jeremie, :maxime, :nicolas]

  def landing
  end

  def jeremie
  end

  def maxime
  end

  def nicolas
  end
end
