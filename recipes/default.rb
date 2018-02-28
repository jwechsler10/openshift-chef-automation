#token = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJteXByb2plY3QiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoiYW5zaWJsZS10b2tlbi1kY2RnZiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJhbnNpYmxlIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiMThiNTE4ODctMWNhZC0xMWU4LTkxYzQtMDgwMDI3M2Y3N2M5Iiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Om15cHJvamVjdDphbnNpYmxlIn0.NlA07stsRS3xYiTvRDAek1EsD4fXV85lOvgGDnMwwc7SzcHIWBstVHExhh0k2vI3w9jxYzHm8EXpef24KXdRTeB2_9ss7in97SYJDC28Cte9OMnnzneTvyxl2fpiIe4sdYF0IIsUoBJD4MKu_aM2rYUNnZCH3eaxEI5EHKfb_V1KupyWUntXJ2l73CHOZ_BN9AM9VwFpxKMIZC6ljXhJFA8OuFzk_72uEDOokEykX-otZ9b1G6BD1-vbCGHlpyDdYA0d_ntJ_7HVfLazJNThbGOEKdluK42qZenRh5-DzzBc8kWaqpZZrQUFsqFtWLFbQbddHItALtWPRoEg_jayFw"

token = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImNoZWYtdG9rZW4tZ3c4d2giLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiY2hlZiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjJjNWExNTU0LTFjZTAtMTFlOC1iMzlmLTA4MDAyNzNmNzdjOSIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZWZhdWx0OmNoZWYifQ.mtPyBbzujMBjNcBUgoYQGdD1dSn6FQxpIkHJFaYHccsF9iK0_oHrK3QyZRpmcFGZQs_sPFh0Yt7CAsm0etcDhYiup132DdsbOwtePqTNrWOtuVIN-rnWTsLf4ydii39IVLxqYK2t3wgffeUjLNERMn1UjnWkN41CGGW1D-fWGO7_XehfEtyoDirlI7L4a6GE1KHcfRyFGRZk2Y146qm2to6zh1Mr-6oaLi0BX5-gHfL8J6jRtJJt_a7UG3LYLnI3dHw8uCW_OEqMuSw2RW3Rq_WzIyhOvkXuM-rv6sn9XrH-Vj_ijfcW_bhJDaWYdntvdkM3rIE86OCmUr7qFIZuGA"

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
