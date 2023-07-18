# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe "Home", type: :system do
  describe "index page" do
    it "Shows the right content" do
      visit home_index_path
      expect(page).to  have_content("Home")
    end
  end
end
