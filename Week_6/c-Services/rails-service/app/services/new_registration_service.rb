class NewRegistrationService
  def initialize(params)
  	@user = params[:user]
  	@organization = params[:organization]
  end

  def perform
  	organization_create
  	send_welcome_email
  	notify_slack
  end

  private

  def organization_create
  	post_organization_setup if @organization.save
  end

  def post_organization_setup
  	@user.organization_id = @organization.id
  	@user.save
  	@user.add_role :admin, @organization
  end

  def send_welcome_email
  	WelcomeEmailMiler.welcome_email(@user).deliver_later
  end

  def notify_slack
  	notifier = Slack::Notifier.new "https://hooks.slack.com/services/89ypfhuiwquhfwfwef908wefoij"
  	    notifier.ping "A New User has appeared! #{@organization.name} -   #{@user.name} || ENV: #{Rails.env}"
  end

end