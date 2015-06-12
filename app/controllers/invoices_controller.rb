class InvoicesController < ApplicationController

  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new
    @invoice.project_id = params[:project_id]
    @invoice.amount = params[:amount]
    @invoice.labor = params[:labor]
    @invoice.user_id = params[:user_id]
    @invoice.material = params[:material]

    if @invoice.save
      redirect_to "/invoices", :notice => "Invoice created successfully."
    else
      render 'new'
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])

    @invoice.project_id = params[:project_id]
    @invoice.amount = params[:amount]
    @invoice.labor = params[:labor]
    @invoice.user_id = params[:user_id]
    @invoice.material = params[:material]

    if @invoice.save
      redirect_to "/invoices", :notice => "Invoice updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])

    @invoice.destroy

    redirect_to "/invoices", :notice => "Invoice deleted."
  end
end
