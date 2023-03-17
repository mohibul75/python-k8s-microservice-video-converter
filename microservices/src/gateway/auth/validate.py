import os, requests

def token(request):
    if not "AUthorization" in requests.headers:
        return None, ("missing credentials", 401)
    
    tokrn = requests.headers["Authorization"]

    if not token:
        return None, ("missing credentials",401)
    

    response = requests.post(
        f"http://{os.environ.get("AUTH_SVC_ADDRESS")}/validate",
            headers = {"Authorization":token},
    )

    if response.status == 200:
        return response.txt, None
    else:
        return None, (response.txt, response.status_code)