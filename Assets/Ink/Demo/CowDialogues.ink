INCLUDE Globals.ink



 Cows are big animals with hooves and can be found on farms.#C:BEN:2 #POS:2
 They have large eyes and eat grass. Cows are typically calm and approachable when treated kindly.#C:BEN:2 #POS:2


* ["Yes, it looks friendly."] -> act1_friendly_answer 
* ["No, it’s too dangerous to live with others."] -> act1_question2


=== act1_question2 ===
Cows are gentle animals and can live with other animals. Let's try again!"#C:BEN:2 #POS:2
* ["No, it’s friendly and can live with others." ]
Exactly!#C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE

=== act1_friendly_answer ===
Hmm, the Cows looks friendly and can live with other animals.#C:BEN:2 #POS:2

~ Attempt = Attempt - 1
-> DONE














    
