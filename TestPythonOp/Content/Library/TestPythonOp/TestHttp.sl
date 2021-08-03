namespace: TestPythonOp
flow:
  name: TestHttp
  workflow:
    - HttpGet:
        do:
          TestPythonOp.HttpGet:
            - str_http: http
            - str_host: google.com
            - str_request_permissions_endpoint: '123'
            - str_access_token_endpoint: '123'
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      HttpGet:
        x: 40
        'y': 40
        navigate:
          d082ad49-2078-798e-3125-07b021a0bfef:
            targetId: e35fdd58-d8de-a3c5-261a-19cf0edc8b97
            port: SUCCESS
    results:
      SUCCESS:
        e35fdd58-d8de-a3c5-261a-19cf0edc8b97:
          x: 240
          'y': 40
