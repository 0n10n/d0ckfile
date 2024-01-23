def response(flow):
    print("")
    print("="*50)
    print(flow.request.method + " " + flow.request.path + " " + flow.request.http_version)

    print("-"*25 + " request headers " + "-"*25)
    for k, v in flow.request.headers.items():
        print("%-30s: %s" % (k.upper(), v))

    print("-"*25 + " response headers " + "-"*25)
    for k, v in flow.response.headers.items():
        print("%-30s: %s" % (k.upper(), v))

    print("-"*25 + " body (first 100 bytes) " + "-"*25)
    print(flow.request.content[0:100])
