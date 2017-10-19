class PagesController < ApplicationController
  def home
    @first_president_id = President.first.id
  end
end
