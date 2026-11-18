# 🍲 अन्नपूर्णा (Annapurna) — Stop Food Waste & Feed People

> **« अन्नदानं महादानम् »** — *Sharing food is the greatest gift.*

A production-ready community platform that connects **College Canteens, Mess Halls, and Restaurants** with **Local Charities, Night Shelters, and Orphanages** across India.

Named after Goddess Annapurna — ensuring no one sleeps hungry.

---

## 🌟 Key Features

### 📸 1. AI Food Tray & Kitchen Slip Vision Scanner
- Point your phone or webcam at a **food tray / buffet warmer** or a **handwritten kitchen slip / notepad**.
- The AI vision scanner automatically identifies dishes, calculates volume, and predicts how many hungry people can be fed.
- Includes a **1-Click Auto-Fill** button to publish extra food to charities in seconds without typing.

### 🤖 2. Smart AI Food Demand & Loved Dishes Forecaster
- Analyzes past meal logs, day-of-week attendance patterns, and weather/exam rushes.
- Predicts optimal cooking quantities with a safe buffer, cutting down food waste by up to 35%.
- Features a high-demand **Loved Dishes Catalog** to anticipate student and customer cravings.

### 🌐 3. Multi-Language Localization (14 Indian Languages + English)
- Switch seamlessly in real-time from the header:
  - English, हिन्दी (Hindi), ಕನ್ನಡ (Kannada), தமிழ் (Tamil), తెలుగు (Telugu), मराठी (Marathi), বাংলা (Bengali), ગુજરાતી (Gujarati), മലയാളം (Malayalam), ਪੰਜਾਬੀ (Punjabi), ଓଡ଼ିଆ (Odia), অসমীয়া (Assamese), اردو (Urdu), संस्कृतम् (Sanskrit).

### 🛡️ 4. FSSAI Food Safety Verification
- Built-in FSSAI license / registration number tracking across canteens and restaurants.
- Displays verified food safety trust badges on listings and charity collection receipts.

### 🔐 5. Secure 4-Digit Handover Verification
- When a charity claims surplus food, a unique 4-digit code is generated.
- Kitchen cooks verify this code before release to prevent theft or unauthorized pickups.

---

## ⚡ 1-Click Demo Accounts

Try out Annapurna immediately without signing up:

| Role | Email | Password | What You Can Test |
| :--- | :--- | :--- | :--- |
| **Canteen Cook** | `canteen@campus.edu` | `password123` | AI Scanner, meal planning, and surplus posting |
| **Restaurant Chef** | `chef@urbanbistro.com` | `password123` | Buffet meal sharing and pickup secret codes |
| **Charity Volunteer** | `volunteer@robinhood.org` | `password123` | Live surplus feed and 1-click food booking |
| **Night Shelter** | `shelter@hopehome.org` | `password123` | Daily community meal tracker and progress gauge |

---

## 🚀 How to Deploy

### Option 1: Streamlit Community Cloud (Free & 1-Click)
1. Push this repository to your GitHub account (e.g. `https://github.com/akshay29062008/smart.food.ai`).
2. Go to [share.streamlit.io](https://share.streamlit.io) and sign in with GitHub.
3. Click **"New app"**, select your repository, branch `main`, and main file `app.py`.
4. Click **"Deploy"**. The app automatically initializes the database, seeds demo data, and goes live on the internet!

### Option 2: Render or Railway
This project includes a production `Procfile`:
```
web: streamlit run app.py --server.port=${PORT:-8501} --server.address=0.0.0.0 --server.headless=true
```
Connect your GitHub repo to [Render](https://render.com) or [Railway](https://railway.app), and it deploys automatically.

### Option 3: Docker Container
```bash
docker build -t annapurna-smartfood .
docker run -d -p 8501:8501 annapurna-smartfood
```

---

## 💻 Running Locally

1. Clone or navigate to the project directory:
```bash
cd smart-food-platform
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Launch the platform:
```bash
streamlit run app.py
```
Open **`http://localhost:8501`** in your browser.

---

## 🧪 Automated Test Suite

Run the complete test suite (28 passing tests):
```bash
pytest -v
```
Tests cover:
- Multi-language translation integrity (`test_translations.py`)
- AI Food Tray & Slip Vision Scanner (`test_ai_vision_scanner.py`)
- AI Demand Predictor & Loved Dishes (`test_ai_predictor.py`)
- Authentication, bcrypt hashing, and FSSAI preservation (`test_auth.py`)
- Inventory claiming & negative stock prevention (`test_inventory.py`)
- Daily cooking and NGO needs trackers (`test_needs.py`)
- Touch Bar navigation and tap-to-home brand logo (`test_touchbar.py`)
