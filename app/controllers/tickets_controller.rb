class TicketsController < ApplicationController
  def index
    @tickets = Ticket.where('status=?', "Waiting for staff")
  end

  def assign
	ticket = Ticket.find(params[:id])
	ticket.user_id = current_user.id
	ticket.save
	redirect_to ticket
  end

  def show
    @ticket = Ticket.find(params[:id])
    @comments = Comment.where("ticket_id=?", @ticket.id)
    @comment = Comment.new
  end

  def create_comment
    @comment = Comment.new(params[:comment])
	if @comment
		@comment.ticket_id = Ticket.find(params[:id]).id
		@comment.from = Ticket.find(params[:id]).customer_name
	end
	respond_to do |format|
	    @comment.save
	    format.js
	end
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
