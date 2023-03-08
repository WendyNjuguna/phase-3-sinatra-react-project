class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


# Add your routes here

  # get all farmers
  get "/farmers" do
    farmers = Farmer.all
    farmers.to_json()
    end

    # get all investments
    get "/investments" do
    investments = Investment.all
    investments.to_json()
    end

    # get all investors
    get "/investors" do
    investors = Investor.all
    investors.to_json()
    end

    # get all farmer reviews by id
    get '/farmers/reviews' do
      farmer = Farmer.find(params[:id])
      review = user.reviews.find(params[:review_id])
      review.to_json
    end

    # post a farmer
    post "/farmer/" do
      farmer = Farmer.create(    
        name: params[:name],
        email: params[:email],
        contact: params[:contact],
        goods:  params[:goods],
        password_digest: params[:password_digest]
      ) 
      farmer.save()
      {
        "Message": "Created successfully",
        "Status": "HTTP_200_OK"
      }.to_json()
    end

    # update farmer goods
        patch "/farmer/update/:id" do
          farmer = Farmer.find_by(id: params[:id])
    
          farmer.update(
            name: params[:name],
            email: params[:email],
            contact: params[:contact],
            goods:  params[:goods],
            password_digest: params[:password_digest]     
          )
          farmer.to_json()
        end

  # Delete
      # delete a car
      delete "/farmer/:id" do
        farmer = Farmer.find_by(id: params[:id])  
        farmer.destroy
        {
          "message":"Successfully deleted farmer",
          "Status":"200_OK"
        }.to_json()
      end
  
  end