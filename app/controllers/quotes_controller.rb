  class QuotesController < ApplicationController

    def index
      @quotes = Quote.all
    end

    def show
      @quote = Quote.find(params[:id])
    end

    def new
      @quote = Quote.new
    end

    def create
      @quote = Quote.new
      @quote.project_id = params[:project_id]
      @quote.user_id = params[:user_id]
      @quote.labor = params[:labor]
      @quote.material = params[:material]
      @quote.amount = @quote.labor + @quote.material

      if @quote.save
        redirect_to "/quotes", :notice => "Quote created successfully."
      else
        render 'new'
      end
    end

    def edit
      @quote = Quote.find(params[:id])
    end

    def update
      @quote = Quote.find(params[:id])

      @quote.project_id = params[:project_id]
      @quote.user_id = params[:user_id]
      @quote.labor = params[:labor]
      @quote.material = params[:material]
      @quote.amount = @quote.labor + @quote.material

      if @quote.save
        redirect_to "/quotes", :notice => "Quote updated successfully."
      else
        render 'edit'
      end
    end

    def destroy
      @quote = Quote.find(params[:id])

      @quote.destroy

      redirect_to "/quotes", :notice => "Quote deleted."
    end
  end
