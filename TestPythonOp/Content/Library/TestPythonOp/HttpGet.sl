namespace: TestPythonOp
operation:
  name: HttpGet
  inputs:
    - str_http
    - str_host
    - str_request_permissions_endpoint
    - str_access_token_endpoint
  python_action:
    use_jython: false
    script: "from urllib.parse import urljoin\r\n# do not remove the execute function \r\ndef execute(str_http,str_host,str_access_token_endpoint,str_request_permissions_endpoint):\r\n    array = {}\r\n    base_url = str_http + str_host\r\n    array[\"str_host_base\"] = base_url\r\n    array[\"str_get_token_access\"] = urljoin(base_url, str_access_token_endpoint)\r\n    array[\"str_get_permissions_user\"] = urljoin(base_url, str_request_permissions_endpoint)\r\n    return {\"result\": array}"
  outputs:
    - result
  results:
    - SUCCESS
