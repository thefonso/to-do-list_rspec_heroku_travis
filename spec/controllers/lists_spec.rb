require "rails_helper"
require 'shoulda/matchers'

describe ListsController do


  #
  #index returns page
  it "should get page for lists" do

    get :index
    expect(response).to have_http_status(:success)
    expect(response).to render_template(:index)

  end

  #index should return object
  it "should get an object from db" do


    get :index
    assigns(:lists).should_not be_nil
   # expect(response).to have_http_status(:success)
   # expect(assigns(:list).id).to eq(list.id)
   # expect(session[:previous_page]).to eq("list/")

  end

   #create method
   it "should create a list" do

     post :create, list: FactoryGirl.attributes_for(:list)
     expect(response).to redirect_to(lists_path)

   end

end