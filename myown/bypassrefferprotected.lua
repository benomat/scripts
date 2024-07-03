http_request = http_request or request or (http and http.request) or syn.request 

print(http_request({
    Url = "https://rolling-aveline-applesauce12-07787e2a.koyeb.app/",
    Method = "GET",
    Headers = {
        ["Referer"] = "https://linkvertise.com/"
    }
}).Body)