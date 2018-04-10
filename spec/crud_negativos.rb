
require 'httparty'
require 'spec_helper'

class Api
  include HTTParty
  base_uri 'http://localhost:3000/'
end

RSpec.describe 'info json server - requisição GET' do
    it 'efetuando requisição GET no link que não existe' do
      @response = Api.get('/users/TESTE')
      expect(@response.code).to eql(404)
    end
  end

  RSpec.describe 'info json server - requisição POST' do
    it 'efetuando requisição POST - criar registro com id ja existente' do
           @usuario = 
            {
              "id": 1,  
              "name": "dureza",
              "location": "sp"
            }  
      @response = Api.post('/users', :body => @usuario)
      expect(@response.code).to eql(500)
      expect(@response.message).to eql('Internal Server Error')
    end
  end  

  RSpec.describe 'info json server - requisição PUT' do
    it 'efetuando requisição PUT- Alterar registro que não existe' do
            @usuario = 
            {
                "name": "dureza Andre",
                "location": "sp"
            }  
      @response = Api.put('/users/2', :body => @usuario)
      expect(@response.code).to eql(404)
    end
  end

  RSpec.describe 'info json server - requisição DELETE' do
    it 'efetuando requisição DELETE- deletar algo que não existe' do
      @response = Api.delete('/users/2', :body => @usuario)
      expect(@response.code).to eql(404)
    end
  end



