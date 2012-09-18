require 'spec_helper'

describe UsersController do
  render_views


  describe "GET 'show" do
    
    before(:each) do
      @user = Factory(:user)
    end

    it "should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end

    
  end



  describe "GET 'new'" do
   it "returns http success" do
      get :new
      response.should be_success
    end




  end
  
  describe "POST 'create" do
    
    describe "failure" do
      
      before(:each) do
          @attr = { :name => "", :email => "", :password => "",
                    :password_confirmation => ""} 
      end
      
     

      it "should render the 'new' page" do
        post :create, :user => @attr
        response.should render_teplate('new')
      end


      it "should not create a user" do
        

      

    end

  end

end
