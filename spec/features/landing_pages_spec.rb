require 'rails_helper'

RSpec.feature 'LandingPages', type: :feature do
  context 'Going to website' do
    Steps 'Seeing a welcome message' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content('Welcome to Registration')
      end
    end
  end

  context 'Going to website' do
    Steps 'Seeing registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can see registration form' do
        expect(page).to have_content('Full name:')
        expect(page).to have_content('Street address:')
        expect(page).to have_content('City:')
        expect(page).to have_content('State:')
        expect(page).to have_content('Postal code:')
        expect(page).to have_content('Country:')
        expect(page).to have_content('Email address:')
        expect(page).to have_content('User ID:')
        expect(page).to have_content('Password:')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Lea Ann'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'xyz@yahoo.com'
        fill_in 'user_id', with: '    '
        fill_in 'password', with: '    '
        click_button 'Register'
      end
      And 'I receive an error message for the password and user id' do
        expect(page).to have_content('ERROR: User ID and/or Password is not valid. Please enter a valid User ID and Password')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page that I have successfully registered' do
        expect(page).to have_content('Congratulations Ryan Lochte, you have successfully registered')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page that I have successfully registered' do
        expect(page).to have_content('Congratulations Ryan Lochte, you have successfully registered')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page that I have successfully registered and displays registration info' do
        expect(page).to have_content('Full name: Ryan Lochte')
        expect(page).to have_content('Street address: 123 main street')
        expect(page).to have_content('City: San Diego')
        expect(page).to have_content('State: CA')
        expect(page).to have_content('Postal code: 92124')
        expect(page).to have_content('Country: USA')
        expect(page).to have_content('Email address: ryan@bananas.com')
        expect(page).to have_content('rlochte')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'phone', with: '8581231234'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page that I have successfully registered that includes phone number' do
        expect(page).to have_content('Full name: Ryan Lochte')
        expect(page).to have_content('Street address: 123 main street')
        expect(page).to have_content('City: San Diego')
        expect(page).to have_content('State: CA')
        expect(page).to have_content('Postal code: 92124')
        expect(page).to have_content('Country: USA')
        expect(page).to have_content('Email address: ryan@bananas.com')
        expect(page).to have_content('Phone: 8581231234')
        expect(page).to have_content('rlochte')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page that I has no phone if the phone number is empty' do
        expect(page).to have_content('Phone: no phone')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page where I can enter my credentials and login' do
        fill_in 'user_id', with: 'notrlochte'
        fill_in 'password', with: 'ihatebananas'
        click_button 'Login'
      And 'If my login fails, I am taken to a login page '
        expect(page).to have_content('Enter your User ID and Password to login to your account')
        expect(page).to have_content('User ID:')
        expect(page).to have_content('Password:')
      end
    end
  end

  context 'Going to website' do
    Steps 'filling in the registration form' do
      Given 'I am on landing page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'full_name', with: 'Ryan Lochte'
        fill_in 'street_address', with: '123 main street'
        fill_in 'city', with: 'San Diego'
        fill_in 'state', with: 'CA'
        fill_in 'postal_code', with: '92124'
        fill_in 'country', with: 'USA'
        fill_in 'email_address', with: 'ryan@bananas.com'
        fill_in 'user_id', with: 'rlochte'
        fill_in 'password', with: 'ilovebananas'
        click_button 'Register'
      end
      And 'I am directed to a confirmation page where I can enter my credentials and login' do
        fill_in 'user_id', with: 'notrlochte'
        fill_in 'password', with: 'ihatebananas'
        click_button 'Login'
      And 'If my login fails, I am taken to a login page and I will see an error message'
        expect(page).to have_content('Log in failed, try again')
      end
    end
  end
  #TODO get this to work
  # context 'Going to website' do
  #   Steps 'filling in the registration form' do
  #     Given 'I am on landing page' do
  #       visit '/'
  #     end
  #     Then 'I can fill out the registration form' do
  #       fill_in 'full_name', with: 'Ryan Lochte'
  #       fill_in 'street_address', with: '123 main street'
  #       fill_in 'city', with: 'San Diego'
  #       fill_in 'state', with: 'CA'
  #       fill_in 'postal_code', with: '92124'
  #       fill_in 'country', with: 'USA'
  #       fill_in 'email_address', with: 'ryan@bananas.com'
  #       fill_in 'user_id', with: 'rlochte'
  #       fill_in 'password', with: 'ilovebananas'
  #       click_button 'Register'
  #     end
  #     And 'I now return to the welcome page to register another user with the same user_id' do
  #       visit '/'
  #       fill_in 'user_id', with: 'rlochte'
  #       fill_in 'password', with: 'ihatebananas'
  #       click_button 'Register'
  #     And 'I am taken back to the register page and I will see an error message'
  #       expect(page).to have_content('User ID taken, try another')
  #     end
  #   end
  # end
end #end of rspec
