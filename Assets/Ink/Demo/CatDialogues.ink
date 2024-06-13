INCLUDE Globals.ink



Cats are small, furry animals with whiskers and sharp claws.#C:BEN:2 #POS:2
They like to purr when they're happy and often enjoy chasing toys or lounging in sunny spots.#C:BEN:2 #POS:2
Cats are usually gentle and make good companions.#C:BEN:2 #POS:2


* ["Yes, it looks friendly."] -> act1_friendly_answer 
* ["No, it’s too dangerous to live with others."] -> act1_question2


=== act1_question2 ===
Cats are usually gentle and friendly.#C:BEN:2 #POS:2

* "it’s friendly and can live with others." 
-> DONE

=== act1_friendly_answer ===
Hmm, the Cat looks friendly and can live with other animals.

~ Attempt = Attempt - 1
-> DONE














    
