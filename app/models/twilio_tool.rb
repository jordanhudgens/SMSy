class TwilioTool
  def self.send_text(number_to_send_to, link_to_send)
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    @client.messages.create(
        from: '+14322791075',
        to: number_to_send_to,
        body: "Here's a new blog post: #{link_to_send}"
    )
  end
end