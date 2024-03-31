import requests

# Your API key (replace with your actual API key)
api_key = "YOUR_API_KEY_HERE"

# Base URL for the Google Solar API (this is a hypothetical endpoint)
api_url = "https://solar.googleapis.com/v1/solarPotential"

# Parameters for the API request
# For example, latitude and longitude of the location
params = {
    "latitude": 34.0522,
    "longitude": -118.2437,
    "key": api_key
}

# Make the API request
response = requests.get(api_url, params=params)

# Check if the request was successful
if response.status_code == 200:
    # Process the JSON response
    solar_data = response.json()
    print(solar_data)
else:
    print("Failed to retrieve data:", response.status_code)
