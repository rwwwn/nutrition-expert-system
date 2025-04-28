; =============================
; NUTRITION EXPERT SYSTEM
; =============================

; === Templates ===
(deftemplate user
   (slot name)
   (slot age (type INTEGER))
   (slot gender (allowed-values male female))
   (slot health-condition)
   (slot fitness-goal)
   (slot allergy)
)

(deftemplate recommendation
   (slot text)
)

; === Output Rule ===
(defrule show-personalized-recommendation
   (recommendation (text ?t))
   =>
   (printout t crlf "Recommended Advice: " ?t crlf)
)

; === Start Program Rule ===
(defrule start-program
   =>
   (printout t "===============================" crlf)
   (printout t " Welcome to the Nutrition Expert System! " crlf)
   (printout t " Answer the following questions carefully. " crlf)
   (printout t "===============================" crlf crlf)

   (printout t "General Tip:" crlf)
   (printout t "- Consult your healthcare provider before making major dietary changes." crlf crlf)

   (printout t "Enter your first name: ")
   (bind ?name (read))

   (printout t "Enter your age (numeric only): ")
   (bind ?age (read))
   (while (not (integerp ?age)) do
      (printout t "Invalid input. Please enter a valid number: ")
      (bind ?age (read)))

   (printout t crlf "Select your gender (type exactly): male / female" crlf)
   (bind ?gender (read))
   (while (and (neq ?gender male) (neq ?gender female)) do
      (printout t "Invalid input. Please type exactly: male or female: ")
      (bind ?gender (read)))

   ; Health Condition
   (printout t crlf "Select your health condition (only one, type exactly):" crlf)
   (printout t "- diabetes" crlf)
   (printout t "- high-blood-pressure" crlf)
   (printout t "- low-blood-pressure" crlf)
   (printout t "- high-blood-sugar" crlf)
   (printout t "- low-blood-sugar" crlf)
   (printout t "- iron-deficiency" crlf)
   (printout t "- vitamin-d-deficiency" crlf)
   (printout t "- anemia" crlf)
   (printout t "- constipation" crlf)
   (printout t "- acid-reflux" crlf)
   (printout t "- lactose-intolerance" crlf)
   (printout t "- gluten-intolerance" crlf)
   (printout t "- dehydration" crlf)
   (printout t "- none" crlf)
   (bind ?condition (read))
   (while (not (member$ ?condition (create$ diabetes high-blood-pressure low-blood-pressure high-blood-sugar low-blood-sugar iron-deficiency vitamin-d-deficiency anemia constipation acid-reflux lactose-intolerance gluten-intolerance dehydration none))) do
      (printout t "Invalid input. Please type exactly as shown: ")
      (bind ?condition (read)))

   ; Fitness Goal
   (printout t crlf "Select your fitness goal (only one, type exactly):" crlf)
   (printout t "- muscle-gain" crlf)
   (printout t "- weight-loss" crlf)
   (printout t "- general-health" crlf)
   (printout t "- hydration" crlf)
   (printout t "- detox" crlf)
   (printout t "- immunity" crlf)
   (printout t "- none" crlf)
   (bind ?goal (read))
   (while (not (member$ ?goal (create$ muscle-gain weight-loss general-health hydration detox immunity none))) do
      (printout t "Invalid input. Please type exactly as shown: ")
      (bind ?goal (read)))

   ; Allergy
   (printout t crlf "Select your allergy (only one, type exactly):" crlf)
   (printout t "- dairy" crlf)
   (printout t "- nuts" crlf)
   (printout t "- none" crlf)
   (bind ?allergy (read))
   (while (not (member$ ?allergy (create$ dairy nuts none))) do
      (printout t "Invalid input. Please type exactly as shown: ")
      (bind ?allergy (read)))

   ; Save the user facts
   (assert (user (name ?name) (age ?age) (gender ?gender)
                 (health-condition ?condition)
                 (fitness-goal ?goal)
                 (allergy ?allergy)))
)

; =============================
;      Nutrition Rules
; =============================

; Diabetes
(defrule diabetes-low-glycemic
   (user (health-condition diabetes))
   =>
   (assert (recommendation (text "Choose low-glycemic foods like oats, barley, lentils, and leafy greens.")))
)

(defrule diabetes-avoid-sugar
   (user (health-condition diabetes))
   =>
   (assert (recommendation (text "Avoid sugary drinks, white bread, and processed snacks.")))
)

; High Blood Pressure
(defrule bp-critical
   (user (health-condition high-blood-pressure))
   =>
   (assert (recommendation (text "High blood pressure is serious. Reduce salt, eat potassium-rich foods, and consult your doctor.")))
)

(defrule bp-potassium
   (user (health-condition high-blood-pressure))
   =>
   (assert (recommendation (text "Eat potassium-rich foods like bananas, avocados, and sweet potatoes.")))
)

; Low Blood Pressure
(defrule low-bp-hydration
   (user (health-condition low-blood-pressure))
   =>
   (assert (recommendation (text "Drink plenty of fluids and eat foods rich in vitamin B12.")))
)

; High Blood Sugar
(defrule sugar-high-critical
   (user (health-condition high-blood-sugar))
   =>
   (assert (recommendation (text "Avoid sugars and simple carbs. Focus on high-fiber foods.")))
)

; Low Blood Sugar
(defrule sugar-low
   (user (health-condition low-blood-sugar))
   =>
   (assert (recommendation (text "Eat fast sugars like juice or honey, then follow with complex carbs.")))
)

; Iron Deficiency
(defrule iron-deficiency-foods
   (user (health-condition iron-deficiency))
   =>
   (assert (recommendation (text "Eat lentils, spinach, and vitamin C rich foods for iron absorption.")))
)

; Vitamin D Deficiency
(defrule vitd-deficiency-foods
   (user (health-condition vitamin-d-deficiency))
   =>
   (assert (recommendation (text "Get sunlight and eat fatty fish or fortified foods.")))
)

; Dehydration
(defrule dehydration-tip
   (user (health-condition dehydration))
   =>
   (assert (recommendation (text "Drink water and eat hydrating foods like cucumbers and watermelon.")))
)

; Anemia
(defrule anemia-women
   (user (health-condition anemia) (gender female) (age ?a&:(< ?a 50)))
   =>
   (assert (recommendation (text "Eat iron and folate-rich foods during reproductive years.")))
)

(defrule anemia-elderly
   (user (health-condition anemia) (age ?a&:(> ?a 60)))
   =>
   (assert (recommendation (text "Older adults should consume more iron, B12, and folate-rich foods.")))
)

; Cholesterol
(defrule cholesterol-men
   (user (health-condition cholesterol) (gender male) (age ?a&:(>= ?a 45)))
   =>
   (assert (recommendation (text "Limit saturated fats, eat oats, avocados, and fish.")))
)

; Acid Reflux
(defrule reflux-avoid-foods
   (user (health-condition acid-reflux))
   =>
   (assert (recommendation (text "Avoid acidic, spicy, and fatty foods. Eat smaller, frequent meals.")))
)

; Lactose Intolerance
(defrule lactose-alternatives
   (user (health-condition lactose-intolerance))
   =>
   (assert (recommendation (text "Use lactose-free or plant-based alternatives.")))
)

; Gluten Intolerance
(defrule gluten-free
   (user (health-condition gluten-intolerance))
   =>
   (assert (recommendation (text "Avoid gluten and choose alternatives like quinoa and rice.")))
)

; Pregnancy
(defrule pregnancy-support
   (user (health-condition pregnancy) (gender female))
   =>
   (assert (recommendation (text "Eat folate-rich foods, lean protein, and iron during pregnancy.")))
)

; Fitness Goals
(defrule muscle-gain
   (user (fitness-goal muscle-gain))
   =>
   (assert (recommendation (text "Eat lean protein every 3 to 4 hours.")))
)

(defrule weight-loss-general
   (user (fitness-goal weight-loss))
   =>
   (assert (recommendation (text "Focus on high-fiber, low-calorie foods. Avoid processed foods.")))
)

(defrule general-health
   (user (fitness-goal general-health))
   =>
   (assert (recommendation (text "Build your plate: 50% vegetables/fruits, 25% protein, 25% whole grains.")))
)

(defrule hydration
   (user (fitness-goal hydration))
   =>
   (assert (recommendation (text "Drink enough water every day.")))
)

(defrule detox
   (user (fitness-goal detox))
   =>
   (assert (recommendation (text "Eat cruciferous vegetables and minimize sugary/processed food.")))
)

(defrule immunity
   (user (fitness-goal immunity))
   =>
   (assert (recommendation (text "Boost immunity with citrus fruits, garlic, and yogurt.")))
)

; Allergies
(defrule allergy-dairy
   (user (allergy dairy))
   =>
   (assert (recommendation (text "Use calcium-fortified almond/soy milk instead of dairy.")))
)

(defrule allergy-nuts
   (user (allergy nuts))
   =>
   (assert (recommendation (text "Avoid nuts and replace with seeds like flax or sunflower.")))
)

; =============================
;      Decision Tree
; =============================

; --- Fatigue Checker ---
(defrule start-fatigue-tree
   =>
   (printout t crlf "*** Fatigue Checker ***" crlf)
   (printout t "Do you feel tired daily? (yes/no): ")
   (bind ?fatigue (read))
   (while (and (neq ?fatigue yes) (neq ?fatigue no)) do
      (printout t "Invalid input. Please type 'yes' or 'no': ")
      (bind ?fatigue (read)))
   
   (if (eq ?fatigue yes) then
      (printout t "Did you get a blood test? (yes/no): ")
      (bind ?test (read))
      (while (and (neq ?test yes) (neq ?test no)) do
         (printout t "Invalid input. Please type 'yes' or 'no': ")
         (bind ?test (read)))

      (if (eq ?test yes) then
         (printout t "Did your results show anemia? (yes/no): ")
         (bind ?anemia (read))
         (while (and (neq ?anemia yes) (neq ?anemia no)) do
            (printout t "Invalid input. Please type 'yes' or 'no': ")
            (bind ?anemia (read)))

         (if (eq ?anemia yes) then
            (printout t "Advice: Eat iron-rich foods like lentils, spinach, and liver." crlf)
         else
            (printout t "Advice: Check for vitamin D deficiency or other nutritional imbalances." crlf))
      else
         (printout t "Advice: Please visit a doctor for a blood test to check for causes of fatigue." crlf))
   else
      (printout t "Great! Keep maintaining your energy levels." crlf))
)



; =============================
; END OF CODE
; =============================
