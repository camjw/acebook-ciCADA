# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MessageBroadcastJob, type: :job do
  describe "#perform_message" do
    let(:user) { FactoryBot.create(:user) }

    before :each do
      login_as(user, scope: :user)
    end

    it "broadcasts a message" do
      message = Message.create!( content: 'string', created_at: "now", user_id: user.id )
      ActiveJob::Base.queue_adapter = :test
      expect {
        MessageBroadcastJob.set(queue: 'low').perform_later(message)
      }.to have_enqueued_job.with(message).on_queue('low')
    end
  end
end
