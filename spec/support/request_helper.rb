module RequestHelper
  def application_json_header
    { "Content-Type" => "application/json" }
  end
end