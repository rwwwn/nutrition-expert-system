# nutrition-expert-system
## Description
This is a rule-based expert system built using CLIPS. It provides personalized nutrition advice based on the user's health condition, fitness goals, and allergies.

The system uses knowledge rules and decision trees to guide users to appropriate dietary recommendations.

## Features
- Personalized advice based on health conditions like diabetes, anemia, dehydration, etc.
- Fitness goal guidance (muscle gain, weight loss, hydration, general health, detox, immunity).
- Allergy consideration (dairy, nuts).
- Fatigue diagnosis decision tree to suggest potential causes of daily fatigue.
- Friendly and formal user interface with full error handling.

## Limitations
Due to the structure of the system, users can select only one health condition, one fitness goal, and one allergy per session.  
(Multi-selection is not supported in this implementation.)

## Files
- YES.clp - The main expert system source code file.

## How to Run
1. Open CLIPS.
2. Load the file: nutritionexpertsystem.clp
