🥗 Nutrition Expert System

📌 Overview

The Nutrition Expert System is a rule-based application developed using the CLIPS programming language. It provides personalized dietary recommendations based on user inputs, including health conditions, fitness goals, and allergies. Additionally, it features a decision tree to assist users in identifying potential causes of fatigue.

🧠 Motivation

Maintaining optimal nutrition is crucial for overall health and well-being. This expert system aims to bridge the gap between individuals and personalized nutritional advice by simulating consultations with a nutritionist. It serves as an educational tool and a foundation for further development in health-related expert systems.

🚀 Features
 • Personalized Recommendations: Offers dietary advice tailored to specific health conditions (e.g., diabetes, anemia), fitness objectives (e.g., muscle gain, weight loss), and allergies (e.g., dairy, nuts).
 • Fatigue Diagnosis: Implements a decision tree to help users explore potential nutritional causes of fatigue.
 • User-Friendly Interface: Interactive prompts guide users through input collection with validation to ensure accurate data entry.
 • Single-Selection Inputs: Due to system constraints, users can select one option each for health condition, fitness goal, and allergy.

📂 Table of Contents
 • Installation
 • Usage
 • System Limitations
 • Contributing
 • Acknowledgments

💻 Installation
 1. Clone the Repository:
    git clone https://github.com/rwwwn/nutrition-expert-system.git
2. Navigate to the Directory:
   cd nutrition-expert-system
3. Open CLIPS:
   Launch your CLIPS environment to load and run the system
   
▶️ Usage
 1. Load the System:
In the CLIPS environment, load the source file:
(load "nutritionexpertsystem.clp")
2. Initialize the System:
   (reset)
3. Run the System:
   (run)
4. Follow Prompts:
Enter your name, age, gender, health condition, fitness goal, and allergy as prompted. The system will provide personalized nutritional advice and may initiate the fatigue diagnosis decision tree based on your inputs.

⚠️ System Limitations
 • Single Input Selection: The current system design allows for only one selection per category (health condition, fitness goal, allergy). Future enhancements may include support for multiple selections.
 • Scope of Advice: Recommendations are based on predefined rules and may not cover all possible health scenarios. Users are advised to consult healthcare professionals for comprehensive guidance.

🤝 Contributing
Contributions are welcome to enhance the system’s capabilities. To contribute:
1. Fork the repository.
2. Create a new branch:
  git checkout -b feature/YourFeature
3. Commit your changes:
  git commit -m "Add YourFeature"
4. Push to the branch:
  git push origin feature/YourFeature
5. Open a pull request detailing your changes.

🙏 Acknowledgments
 • Dr. Amina Salhi For guidance and feedback throughout the development process.
 • Team Members: Rawan Albaraiki Amal Alshehri Ameera Duleem Lyan Alshewaier 
 • Resources: Inspiration drawn from various nutritional studies and expert systems literature.
