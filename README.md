# Music-Recommendation-System-Based-on-Facial-Emotion
To create a personalized music experience by detecting a user's emotion from their facial expressions and recommending songs that match (or improve) their mood.

<!-- HEADER -->
<p align="center">
  <img src="https://img.icons8.com/color/96/000000/musical-notes.png" alt="Music Logo"/>
</p>

<h1 align="center">🎶 Music Recommendation System Based on Facial Emotion 🎭</h1>

<p align="center">
  <b>AI-powered system that detects your facial emotion using DeepFace and recommends mood-based songs from a MySQL database.</b><br>
  <sub>Backend only — No UI added yet</sub>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.8+-blue?logo=python">
  <img src="https://img.shields.io/badge/DeepFace-Facial%20Emotion-red?logo=opencv">
  <img src="https://img.shields.io/badge/MySQL-Database-orange?logo=mysql">
  <img src="https://img.shields.io/badge/OpenCV-Computer%20Vision-green?logo=opencv">
</p>

---

## 🌟 Overview

Your **mood** decides your **music** 🎧  
This project uses **DeepFace** to detect your emotion (happy, sad, angry, fear, neutral) and recommends songs stored in a **MySQL** database that match your vibe.

---

## ⚡ Features

- 🧠 Emotion detection using **DeepFace**
- 🎵 MySQL-based music recommendation
- 🎭 Recognizes *happy, sad, angry, fear, neutral*
- 💡 Lightweight backend implementation
- 🧩 Easily extendable for a web or mobile UI

---

## 🧠 Tech Stack

**Python**, **DeepFace**, **OpenCV**, **MySQL**, **mysql-connector-python**

---

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/BVISHNU78/Music-Recommendation-System-Based-on-Facial-Emotion.git
cd Music-Recommendation-System-Based-on-Facial-Emotion

# Instaependencies
pip install -r requirements.txt

# Run the app
python app.py


🎭 How It Works

1️⃣ Capture your face using webcam or image input
2️⃣ DeepFace analyzes your emotion
3️⃣ The system queries MySQL for songs matching that emotion
4️⃣ Enjoy emotion-based song suggestions 🎶


Detected Emotion: Happy 😊
Recommended Songs:
1. BE HAPPY MEN — Vijay Yesudas & Jyotsna Radhakrishnan
2. Jolly O Gymkhana — Vijay
3. MAYA — Karthik & Sujatha



🌈 Future Scope

🎨 Add a web or desktop UI

🎧 Integrate Spotify / YouTube API

📊 Improve model accuracy with CNN fine-tuning

🔊 Real-time playback integration
