module RandomUser


  def self.fetch
    response = HTTParty.get("http://api.randomuser.me/")
    results  = response["results"][0]["user"]
    email    = results["email"]
    first    = results["name"]["first"]
    last     = results["name"]["last"]
    name     = "#{first} #{last}"
    gender   = results["gender"]
    picture  = results["picture"]["medium"]
    dob      = results["dob"].to_i
    phone    = results["phone"]
    b        = results["location"]
    location = b.to_json
    password = results["password"]

    user_hash = {email: email,
                 name: name,
                 gender: gender,
                 picture: picture,
                 dob: dob,
                 phone: phone,
                 location: location,
                 password: password}
    return user_hash
  end

end
