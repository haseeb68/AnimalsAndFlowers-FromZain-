INCLUDE Globals.ink



Hyenas are wild animals that look a bit like dogs but are known for their loud laughing sounds.#C:BEN:2 #POS:2
They are good hunters and can be hazardous if provoked.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others."] -> act1_question2
* ["Yes, it looks friendly."] -> act1_friendly_answer 





=== act1_friendly_answer ===
  No, the Hyena's are not friendly at all.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others." ]

Now you got it ! #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE





=== act1_question2 ===
Yes ! Hyenas are dangerous and wild.#C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE








    
