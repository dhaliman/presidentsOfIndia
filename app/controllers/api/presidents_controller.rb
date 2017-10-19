class Api::PresidentsController < ApplicationController

  def show
    @president = President.find(params[:id])

    render json: {name: @president.name, in_office_start: @president.in_office_start,
      in_office_end: @president.in_office_end, next_id: @president.next_id,
      prev_id: @president.prev_id, url: @president.picture_url}
  end
end
