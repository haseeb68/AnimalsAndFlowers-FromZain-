INCLUDE Globals.ink



Scorpions are small creatures with eight legs and a tail that curls up. #C:BEN:2 #POS:2
They live in deserts and can look a bit scary. Scorpions can be harmful because they sting if threatened.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others."] -> act1_question2
* ["Yes, it looks friendly."] -> act1_friendly_answer 





=== act1_friendly_answer ===
No, the Scorpions are not friendly at all.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others." ]
Now you got it ! #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE





=== act1_question2 ===
Yes ! Scorpions are dangerous to be here.
~ Attempt = Attempt - 1
-> DONE








    
