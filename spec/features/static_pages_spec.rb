require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    before { visit root_path }
    subject{ page }

    it { should have_selector('h1', 'Sample App') }
    it { should have_title(full_title(''))}

  end

  describe "Help page" do

    before { visit help_path }
    subject{ page }

    it { should have_selector('h1', 'Help') }

  end

  describe "About page" do
    before { visit about_path }
    subject{ page }

    it { should have_selector('h1', 'About') }
  end                                                                                                                                                                              end

  describe "Contact page" do
    before { visit contact_path }
    subject{ page }

    it { should have_selector('h1', 'Contact') }
    it { should have_title(full_title('Contact')) }
  end