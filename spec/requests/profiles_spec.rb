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

RSpec.describe "/profiles", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Profile. As you add validations to Profile, be sure to
  # adjust the attributes here as well.
  login
  before(:each) do
    @profile = create(:profile)
  end

  let(:profile) { create(:profile) }

  let(:invalid_attributes) {
    { name: "name",
      surname1: "surname1",
      surname2: "surname2",
      address: "address",
      city: "city",
      province: "province",
      country: "country",
      postal_code: "postal_code",
      phone: "phone",
      user_id: nil }
  }

  describe "GET /index" do
    it "renders a successful response" do
      get profiles_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get profile_url(@profile)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_profile_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      profile = profile
      get edit_profile_url(profile.id)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Profile" do
        expect {
          post profiles_url, params: { profile: profile }
        }.to change(Profile, :count).by(1)
      end

      it "redirects to the created profile" do
        post profiles_url, params: { profile: profile }
        expect(response).to redirect_to(profile_url(Profile.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Profile" do
        expect {
          post profiles_url, params: { profile: invalid_attributes }
        }.to change(Profile, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post profiles_url, params: { profile: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { name: "Pepe"}
      }

      it "updates the requested profile" do
        profile = profile
        patch profile_url(profile), params: { profile: new_attributes }
        profile.reload
        expect(profile.name).to eq("Pepe")
      end

      it "redirects to the profile" do
        profile = profile
        patch profile_url(profile), params: { profile: new_attributes }
        profile.reload
        expect(response).to redirect_to(profile_url(profile))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        profile = profile
        patch profile_url(profile), params: { profile: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested profile" do
      profile = profile
      expect {
        delete profile_url(profile)
      }.to change(Profile, :count).by(-1)
    end

    it "redirects to the profiles list" do
      profile = profile
      delete profile_url(profile)
      expect(response).to redirect_to(profiles_url)
    end
  end
end
