import time
import json

url1 = "https://myipv6.p1.opendns.com/get_my_ip"
url2 = "https://ipv6.icanhazip.com"

while True:
    try:
        response1 = requests.get(url1, headers={"accept": "application/json"}, timeout=5)
        ip = json.loads(response1.text)['ip']

        if not ip:
            response2 = requests.get(url2, timeout=5)
            ip = response2.text.strip()

        print(f"Detected IPv6 address: {ip}")

    except Exception as e:
        print(f"Error detecting IPv6 address: {e}")

    time.sleep(5)
