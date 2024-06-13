INCLUDE Globals.ink



Dogs love to play and be around people.#C:BEN:2 #POS:2
They come in many different sizes and colors. #C:BEN:2 #POS:2
Dogs like to bark, run, and are very loyal to their families.#C:BEN:2 #POS:2


* ["Yes, it looks friendly."] -> act1_friendly_answer 
* ["No, it’s too dangerous to live with others."] -> act1_question2


=== act1_question2 ===
Dogs are friendly and can live with other animals. Let's try again!"
* ["No, it’s friendly and can live with others."]
Exactly!#C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE

=== act1_friendly_answer ===
Hmm, the Dogs looks friendly and can live with other animals.#C:BEN:2 #POS:2

~ Attempt = Attempt - 1
-> DONE














    
