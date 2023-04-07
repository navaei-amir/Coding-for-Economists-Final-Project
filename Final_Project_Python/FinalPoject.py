import csv
import urllib.request

# downloading and saving CSV file
url = "https://osf.io/8r7na/download"
response = urllib.request.urlopen(url)
data = response.read().decode('utf-8')
with open('home_prices.csv', 'w') as f:
    f.write(data)


# Create a dictionary to store the trend of price in each month
Year = {"1": [], "2": [], "3": [], "4": [], "5": [], "6": [], "7": [], "8": [], "9": [], "10": [], "11": [], "12": []}

# read CSV file and adding prices to dictionary
with open('home_prices.csv', 'r') as f:
    reader = csv.reader(f)
    for row in reader:
        month = row[2]
        if month in Year:
            Year[month].append(row[3])


for number, ps in Year.items():
    print(f"{number}:{ps}")