
token = ""

master_url = "https://192.168.99.104:8443"

http_request "create_project_request" do
  action :post
  url "#{master_url}/apis/project.openshift.io/v1/projectrequests"
  message({
    "kind": "ProjectRequest",
    "apiVersion": "project.openshift.io/v1",
    "description": "A test project request made with Chef",
    "displayName": "Test",
    "metadata": {
      "name": "test-project"
    }
    }.to_json)
  headers({
    "Authorization": "Bearer #{token}",
    "Content-Type": "application/json"
    })
end
