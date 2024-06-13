INCLUDE Globals.ink



Monkeys are playful and smart.#C:BEN:2 #POS:2
They have long tails and like to swing from branches in trees.#C:BEN:2 #POS:2
While monkeys can be engaging, they are wild animals and should be approached with caution.#C:BEN:2 #POS:2

* ["Yes, it looks friendly."] -> act1_friendly_answer 
* ["No, it’s too dangerous to live with others."] -> act1_question2


=== act1_question2 ===
the Monkey's are friendly. Let's try again! #C:BEN:2 #POS:2
* ["No, it’s friendly and can live with others."]
Exactly !
~ Attempt = Attempt - 1
-> DONE

=== act1_friendly_answer ===
Hmm, the Monkey looks friendly and can live with other animals. #C:BEN:2 #POS:2

~ Attempt = Attempt - 1
-> DONE














    
