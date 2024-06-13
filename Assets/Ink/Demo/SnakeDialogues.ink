INCLUDE Globals.ink



Snakes are long and slither on the ground because they don't have legs.#C:BEN:2 #POS:2
They can be found in many places around the world. Some snakes can be harmful due to venom, so it's wise to keep a safe distance.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others."] -> act1_question2
* ["Yes, it looks friendly."] -> act1_friendly_answer 





=== act1_friendly_answer ===
No, the Snake's are not friendly at all.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others."]
Now You got it ! #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE





=== act1_question2 ===
Yes ! Snakes are dangerous and not friendly at all. #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE








    
