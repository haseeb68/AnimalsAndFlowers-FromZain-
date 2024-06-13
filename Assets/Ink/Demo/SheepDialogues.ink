INCLUDE Globals.ink



Sheep have fluffy wool coats and like to stay in groups called flocks.#C:BEN:2 #POS:2
They are very gentle and mostly eat grass. Sheep are easy to approach and safe to be around.#C:BEN:2 #POS:2


* ["Yes, it looks friendly."] -> act1_friendly_answer 
* ["No, it’s too dangerous to live with others."] -> act1_question2


=== act1_question2 ===
Sheeps are gentle giants and can live with other animals. Let's try again!"#C:BEN:2 #POS:2
* ["No, it’s friendly and can live with others."]
Exactly #C:BEN:2 #POS:2
~ Attempt = Attempt - 1
-> DONE

=== act1_friendly_answer ===
Hmm, the Sheeps looks friendly and can live with other animals.#C:BEN:2 #POS:2

~ Attempt = Attempt - 1
-> DONE














    
