require "rails_helper"

RSpec.describe NotificationsMailer, type: :mailer do
  describe "notify" do
    before(:each) do
      ActionMailer::Base.delivery_method = :test
      ActionMailer::Base.perform_deliveries = true
      ActionMailer::Base.deliveries = []
    end 

    after(:each) do
      ActionMailer::Base.deliveries.clear
    end

    let(:name) { "The Fall Guy"}
    let(:email) { "to@example.org" }
    let(:user) { double('user', :email => email, :name => name)}
    let(:mail) { NotificationsMailer.signup(
      double('user', 
        :email => email, 
        :name => name)
      ) }

    it "renders the headers" do
      expect(mail.subject).to eq("Signup")
      expect(mail.to).to eq([email])
      expect(mail.from).to eq(["from@example.org"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match(
        "Thank you #{name} for subscribing to our service"
      )
      # expect(mail.body.encoded).to match("See Our best offerings")
      # expect(mail.body.encoded).to have_tag("a[href$=#{offerings_url}]", :text => "See our best offerings")
    end

    it "delivers the email" do
      expect(mail.deliver).to be_truthy
      expect(ActionMailer::Base.deliveries.count).to eq(1)
      expect(ActionMailer::Base.deliveries.first).to eq(mail)
    end
  end
end
