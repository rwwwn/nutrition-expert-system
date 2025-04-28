# 🥗 Nutrition Expert System

## 📌 Overview

The Nutrition Expert System is a rule-based application developed using the CLIPS programming language. It provides personalized dietary recommendations based on user inputs, including health conditions, fitness goals, and allergies. Additionally, it features a decision tree to assist users in identifying potential causes of fatigue.

## 🧠 Motivation

Maintaining optimal nutrition is crucial for overall health and well-being. This expert system aims to bridge the gap between individuals and personalized nutritional advice by simulating consultations with a nutritionist. It serves as an educational tool and a foundation for further development in health-related expert systems.

## 🚀 Features

- Personalized Recommendations for specific health conditions (e.g., diabetes, anemia).
- Fatigue Diagnosis Decision Tree.
- User-Friendly Input and Error Handling.
- Single Selection per Category (health condition, fitness goal, allergy).

## 📂 Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [System Limitations](#system-limitations)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)

## 💻 Installation

```bash
# Clone the repository
git clone https://github.com/rwwwn/nutrition-expert-system.git

# Navigate to the directory
cd nutrition-expert-system
```
## ▶️ Usage
```bash
; Load the system
(load "nutritionexpertsystem.clp")

; Initialize the system
(reset)

; Run the system
(run)
```
Follow the prompts to enter your personal information and receive your personalized nutrition advice.

## ⚠️ System Limitations

 • Single input allowed per field (health condition, fitness goal, allergy).
 
 • Recommendations are based on rule-based logic and do not replace medical advice.

## 🤝 Contributing

Contributions are welcome!

Steps:

```bash
# Fork the repository

# Create a new branch
git checkout -b feature/YourFeature

# Commit your changes
git commit -m "Add YourFeature"

# Push to GitHub
git push origin feature/YourFeature
```
Then submit a pull request.

## 🙏 Acknowledgments

- Dr. Amina Salhi — For supervision and guidance.
 
- Team Members:
 
- Rawan Albaraiki
- Amal Alshehri
- Ameera Duleem
- Lyan Alshewaier
  
- Resources:
  
Inspiration from nutritional sciences and expert system development studies.
