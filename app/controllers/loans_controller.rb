class LoansController < ApplicationController
  before_action :authenticate_user!, :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  # GET /loans.json
  def index
    @loans_for = Loan.where("booking_id in (select id from bookings where book_id in (select id from books where user_id = ?))", current_user.id).order(updated_at: :desc)
    @loans_from = Loan.where("booking_id in (select id from bookings where user_id = ?)", current_user.id)
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new()
    @loan.booking_id = loan_params['booking_id']
    @loan.loan_date = DateTime.now
    @loan.return_at = DateTime.now + 5;

    respond_to do |format|
      if @loan.save
        format.html { redirect_to loans_path, notice: 'Loan was successfully created.' }
      else
        format.html { render :index, notice: 'Loan was not created.' }
      end
    end
  end

  def update
    respond_to do |format|
      @loan.returned_at = DateTime.now
      if @loan.save
        format.html { redirect_to loans_path, notice: 'Loan was successfully updated.' }
      else
        format.html { render :index, notice: 'Loan was not updated.' }
      end
    end
  end
  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:booking_id, :loan_date, :return_at, :returned_at)
    end
end
