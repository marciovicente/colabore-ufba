class GlobalController < ApplicationController
  def about
    respond_to do |format|
      format.html
      format.json  { render :json => params }
    end
  end

  def admin
    @reports = Report.all
    respond_to do |format|
      format.html
    end
  end
end
