require 'spec_helper'

describe PagesController do

  describe "GET 'view'" do
    it "returns http success" do
      get 'view'
      response.should be_success
    end
  end

end
