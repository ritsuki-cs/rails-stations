class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
    @rows = Sheet.select(:row).distinct
    @columns = Sheet.select(:column).distinct
  end
end
