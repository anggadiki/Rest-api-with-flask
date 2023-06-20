import requests

# Endpoint API yang ingin diuji
url = 'http://127.0.0.1:5000/songs/popular'

# Mengirim permintaan GET ke endpoint API
response = requests.get(url)

# Menampilkan respons dari API
print(response.json())

#bisa menguji dengan function yang sesuai di python seperti post,put dan delete
