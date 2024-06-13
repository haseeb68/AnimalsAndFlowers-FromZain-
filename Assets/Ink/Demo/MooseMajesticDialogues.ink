INCLUDE Globals.ink



Moose are very large animals with big, flat antlers.#C:BEN:2 #POS:2

They live in forests and are generally peaceful but can become very aggressive if they feel threatened, especially during mating season."#C:BEN:2 #POS:2



* ["No, it’s too dangerous to live with others."] -> act1_question2
* ["Yes, it looks friendly."] -> act1_friendly_answer 





=== act1_friendly_answer ===
No, the Moose are not friendly at all.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others."]

Now you got it ! #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE





=== act1_question2 ===
Yes ! Moose are not friendly.#C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE








    
