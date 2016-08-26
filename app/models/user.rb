class User
  def initialize(full_name, street_address, city, state, postal_code, country, email_address, phone, user_id, password)
    @full_name = full_name
    @street_address = street_address
    @city = city
    @state = state
    @postal_code = postal_code
    @country = country
    @email_address = email_address
    @user_id = user_id
    @password = password
    @phone = phone
  end

  def full_name
    @full_name
  end

  def street_address
    @street_address
  end

  def city
    @city
  end

  def state
    @state
  end

  def postal_code
    @postal_code
  end

  def country
    @country
  end

  def email_address
    @email_address
  end

  def user_id
    @user_id
  end

  def password
    @password
  end

  def phone
    if @phone == ''
      @phone = 'no phone'
    else
      @phone = @phone
    end
  end

end
