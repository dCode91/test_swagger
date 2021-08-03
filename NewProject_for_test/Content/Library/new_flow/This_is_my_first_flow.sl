namespace: new_flow
flow:
  name: This_is_my_first_flow
  workflow:
    - Find_Inactive_Domain_Administrators:
        do_external:
          388f4cfa-62ca-46a3-bf03-9ab0561878de:
            - domain: "${get_sp('io.cloudslang.base.from')}"
            - dnsServer: value1
        navigate:
          - failure: on_failure
          - success: http_client_get
          - diagnosed: CUSTOM
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get: []
        navigate:
          - FAILURE: on_failure
  results:
    - CUSTOM
    - FAILURE
extensions:
  graph:
    steps:
      Find_Inactive_Domain_Administrators:
        x: 120
        'y': 120
        navigate:
          3f99d2ce-20bd-8b70-2da2-d1a41ea4bae7:
            targetId: 0cab3b48-d934-ae9e-a241-e98eea13ab03
            port: diagnosed
      http_client_get:
        x: 480
        'y': 80
    results:
      CUSTOM:
        0cab3b48-d934-ae9e-a241-e98eea13ab03:
          x: 440
          'y': 360
