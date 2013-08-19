# coding: utf-8
require 'spec_helper'

describe "Static pages" do

  subject { page }  
  
  describe "Главная страница" do
	
	before { visit root_path }
    it { should have_selector('h1', text: 'Пассажирам') }
    it { should have_selector('title', text: full_title('')) }

  end

  describe "Поиск пассажиров" do
	
	before { visit find_passengers_path }
    it { should have_selector('h1', text: 'Поиск пассажиров') }
    it { should have_selector('title', text: full_title('Поиск пассажиров')) }

  end

  describe "Найти попутку" do
	
	before { visit find_car_path }
    it { should have_selector('h1', text: 'Найти попутку') }
    it { should have_selector('title', text: full_title('Найти попутку')) }

  end

end
