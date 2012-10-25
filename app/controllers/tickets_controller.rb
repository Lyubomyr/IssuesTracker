class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(params[:ticket])

      if @ticket.save
        redirect_to @ticket, notice: 'Ticket was successfully created.'
      else
        render action: "new"
      end
  end

  def update
    @ticket = Ticket.find(params[:id])

      if @ticket.update_attributes(params[:ticket])
        redirect_to @ticket, notice: 'Ticket was successfully updated.'
      else
        render action: "edit"
      end
  end


  private

  def create_url
  end
end
