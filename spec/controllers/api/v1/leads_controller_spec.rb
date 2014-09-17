require 'rails_helper'

RSpec.describe Api::V1::LeadsController, :type => :controller do
  context "routes" do
    it "points to index all leads" do
      expect(get: "/api/v1/leads.json").to route_to(controller: "api/v1/leads", action: "index", format: "json")
    end
    it "points to lead with 123 id" do
      expect(get: "/api/v1/leads/123.json").to route_to(controller: "api/v1/leads", action: "show", format: "json", id: '123')
    end
  end


  context "GET index for all leads" do
    let!(:create_leads) { FactoryGirl.create_list(:lead, 10) }
    let!(:the_request) { get 'index', format: :json }
    let!(:json_body) { JSON.parse(response.body) }

    it "responds with all leads" do
  expect(response).to be_ok
      expect(create_leads).to_not be_nil
      expect(json_body['leads'].size).to eq(create_leads.size)
    end
  end

  context "GET show for one lead" do
    let!(:lead) { FactoryGirl.create(:lead) }
    let!(:the_request) { get 'show', format: :json, id: lead.id }
    let(:json_body) { JSON.parse(response.body) }

    it "respond with the lead with id" do
      expect(response).to be_ok
      expect(json_body["lead"]["id"]).to eq(lead.id)
    end
  end

  context "POST create a new lead" do
    let!(:new_lead) { FactoryGirl.build(:lead) }
    let!(:the_request) { post 'create', format: :json,
                              lead: { first_name: new_lead.first_name, last_name: new_lead.last_name,
                                      email: new_lead.email, phone: new_lead.phone, status: new_lead.status,
                                      notes: new_lead.notes } }
    let(:json_body) { JSON.parse(response.body) }

    it "respond with the new lead it" do
      expect(json_body["lead"]["first_name"]).to eq(new_lead.first_name)
      expect(json_body["lead"]["last_name"]).to eq(new_lead.last_name)
      expect(json_body["lead"]["email"]).to eq(new_lead.email)
    end

    context "POST update a lead" do
      let!(:lead) { FactoryGirl.create(:lead) }
      let!(:the_request) { patch :update, format: :json, id: lead.id, lead: { first_name: 'hugo', last_name: 'villero', email: 'hola@total.com' } }
      let(:json_body) { JSON.parse(response.body) }
      let(:updated_record) { Lead.find_by_email('hola@total.com')}

      it 'responds with the updated record' do
        binding.pry
        expect(response).to be_no_content
        expect(updated_record.email).to eq('hola@total.com')
      end
    end
  end
end

