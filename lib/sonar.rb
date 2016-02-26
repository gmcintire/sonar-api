class Sonar
  include HTTParty

  base_uri 'https://vntx.sonar.software/api/v1/'

  def initialize(username, password)
    auth = {
      username: username,
      password: password
    }
    @options = { basic_auth: auth, :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'}}
  end

  def accounts
    self.class.get("/accounts", @options)
  end

  def custom(account_id)
    self.class.get("/entity_custom_fields/account/#{account_id}", @options)
  end

  def services(account_id)
    self.class.get("/accounts/#{account_id}/services", @options)
  end

  def create_account(account)
    @options[:body] = account.to_json
    self.class.post("/accounts", @options)
  end

  def update_custom_field(account_id, custom_field_id, value)
    @options[:body] = {data: value}.to_json
    self.class.patch("/entity_custom_fields/account/#{account_id}/#{custom_field_id}", @options)
  end

  def add_service(account_id, service_id)
    @options[:body] = {prorate: true, service_id: service_id}.to_json
    self.class.post("/accounts/#{account_id}/services", @options)
  end

  def add_inventory(inventory = {})
    @options[:body] = {"condition" => "new", "model_id" => inventory[:model_id], "assignee_type" => inventory[:assignee_type], "assignee_id" => inventory[:assignee_id], "individualList" => {"fields" => { inventory[:field_id] => inventory[:field_value]}}}.to_json
    ap @options[:body]
    self.class.post("/inventory/items", @options)
  end
end
