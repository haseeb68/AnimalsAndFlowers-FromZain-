Tomorrow is classroom test time. #C:Mom:1 #POS:2
The test is to find learn about flowers#C:Mom:1 #POS:2
Your mom is going to take you out in nature to review… #C:Mom:1 #POS:2
This area is an flowers park where there are different flowers.#C:Mom:1 #POS:2
There are tasks with learning about different flowers #C:Mom:1 #POS:2
Meet Gardener Ana #C:Mom:1 #POS:2
Gardener Ana: "Welcome to the garden! Ready to learn about flowers?" #C:ANA:2 #POS:2


* ["Absolutely, let's get watering!"] -> act2_question1
* ["I’m not sure, I’m not a gardener."] -> act2_retry_introduction

=== act2_retry_introduction ===
Ana: "No worries! I'll guide you through. Want to try again?"#C:ANA:2 #POS:2

* ["Absolutely, let's get watering!"] -> act2_question1

=== act2_question1 ===
Roses are beautiful flowers that come in many colors. They need lots of water to grow big and strong. #C:ANA:2 #POS:2
->END


