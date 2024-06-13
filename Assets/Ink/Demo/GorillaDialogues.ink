INCLUDE Globals.ink



Gorillas are large, strong apes that live in forests.#C:BEN:2 #POS:2
They have thick fur and walk on all fours. Gorillas are typically calm but are powerful and should be treated with respect due to their potential to react if disturbed.#C:BEN:2 #POS:2


* ["No, it’s too dangerous to live with others."] -> act1_question2
* ["Yes, it looks friendly."] -> act1_friendly_answer 





=== act1_friendly_answer ===
"No, the Gorilla's are not friendly at all.#C:BEN:2 #POS:2

* ["No, it’s too dangerous to live with others."]
Now you got it !#C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE





=== act1_question2 ===
Yes ! Gorillas are not friendly at all #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE








    
