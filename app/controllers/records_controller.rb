class RecordsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @record = Record.new
  end

  def create
    record = Record.new(record_params)
    record.save
    redirect_to records_url, notice: "コーヒー「#(record.name)」を登録いたしました。"
  def edit
  end
end

private

  def record_params
    params.require(:record).permit(:name, :description)
  end
end