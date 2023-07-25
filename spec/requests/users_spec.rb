require 'rails_helper'
require_relative "../support/devise"

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/users", type: :request do
  login
  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let!(:user) { create(:user) }

  let(:invalid_user) { create(:user, email: "email" ) }

  describe "GET /index" do
    it "renders a successful response" do
      get users_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get user_url(User.first.id)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_user_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      get edit_user_url(User.first.id)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new User" do
        expect {
          post users_url, params: { user: user }
        }.to change(User, :count).by(1)
      end

      it "redirects to the created user" do
        post users_url, params: { user: user }
        expect(response).to redirect_to(user_url(user))
      end
    end

    context "with invalid parameters" do
      it "does not create a new User" do
        expect {
          post users_url, params: { user: invalid_user }
        }.to change(User, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post users_url, params: { user: invalid_user }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { name: "Pepe" }
      }

      it "updates the requested user" do
        patch user_url(User.first.id), params: { user: new_attributes }
        user.reload
        expect(user.name).to eq("Pepe")
      end

      it "redirects to the user" do
        patch user_url(User.first.id), params: { user: new_attributes }
        user.reload
        expect(response).to redirect_to(user_url(User.first.id))
      end
    end

    context "with invalid parameters" do
    
      # it "renders a response with 422 status (i.e. to display the 'edit' template)" do
      #   patch user_url(User.first.id), params: { user: invalid_user }
      #   expect(response).to have_http_status(:unprocessable_entity)
      # end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested user" do
      expect {
        delete user_url(User.first.id)
      }.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      delete user_url(User.first.id)
      expect(response).to redirect_to(users_url)
    end
  end
end
