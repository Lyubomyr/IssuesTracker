require "spec_helper"

describe CustomerMailer do
  describe "ticket_created" do
    let(:mail) { CustomerMailer.ticket_created }

    it "renders the headers" do
      mail.subject.should eq("Ticket created")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "ticket_status_updated" do
    let(:mail) { CustomerMailer.ticket_status_updated }

    it "renders the headers" do
      mail.subject.should eq("Ticket status updated")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
