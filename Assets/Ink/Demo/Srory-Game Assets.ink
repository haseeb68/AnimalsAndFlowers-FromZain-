The player is a young child who loves animals and plants.
They are tasked with learning about different animals and plants in a quiz-based game.

Your journey begins with meeting an BEN guide who informs and gives instructions.

* "Meet Zookeeper Ben" -> act1_introduction

=== act1_introduction ===
Zookeeper Ben: "Welcome to the zoo, guardian! Can you identify which animals can live peacefully and which are dangerous?"

* "Sure, let's check them out!" -> act1_question1
* "I don't think I need to identify them." -> act1_retry_introduction

=== act1_retry_introduction ===
Ben: "Oops! Remember, it's important to identify which animals can live together safely. Want to try again?"

* "Sure, let's check them out!" -> act1_question1

=== act1_question1 ===
Ben: "This lion is strong and majestic. Should it stay?"

The lion is known as the king of the jungle. It has sharp teeth and a loud roar. Lions are meat-eaters and can be dangerous to other animals in the zoo.

* "No, it’s too dangerous to live with others." -> act1_question2
* "Yes, it looks friendly." -> act1_retry_question1

=== act1_retry_question1 ===
Ben: "Hmm, the lion looks friendly but can be dangerous to other animals. Try again!"

* "No, it's too dangerous to live with others." -> act1_question2
* "Yes, it looks friendly." -> bad_ending

=== bad_ending ===
Lose Attempt

* "No, it's too dangerous to live with others." -> act1_question2

=== act1_question2 ===
Ben: "How about this gentle giraffe?"

The giraffe is the tallest animal in the world. It uses its long neck to reach leaves high up in trees. Giraffes are gentle plant-eaters and love to live peacefully with others.

* "Yes, it can stay." -> act1_question3
* "No, it’s too tall for others." -> act1_retry_question2

=== act1_retry_question2 ===
Ben: "Giraffes are gentle giants and can live with other animals. Let's try again!"

* "Yes, it can stay." -> act1_question3
* "No, it’s too tall for others." -> bad_ending2

=== bad_ending2 ===
Lose Attempt

* "Yes, it can stay." -> act1_question3

=== act1_question3 ===
Ben: "This snake looks scary. Should we keep it?"

Some snakes can be dangerous because they have venom that can make other animals very sick. This snake is venomous and can be a threat to other animals.

* "No, it's venomous and dangerous." -> act1_question4
* "Yes, it’s harmless." -> act1_retry_question3

=== act1_retry_question3 ===
Ben: "Watch out! This snake is venomous and can hurt other animals. Try again!"

* "No, it's venomous and dangerous." -> act1_question4
* "Yes, it’s harmless." -> bad_ending3

=== bad_ending3 ===
Lose Attempt

* "No, it's venomous and dangerous." -> act1_question4

=== act1_question4 ===
Ben: "How about this calm cow?"

Cows are plant-eating animals that are very calm. They love to graze on grass and live peacefully with other animals.

* "Yes, it can stay." -> act2_introduction
* "No, it's too big for others." -> act1_retry_question4

=== act1_retry_question4 ===
Ben: "Cows are gentle and can live with other animals safely. Let's try again!"

* "Yes, it can stay." -> act2_introduction
* "No, it's too big for others." -> bad_ending4

=== bad_ending4 ===
Lose Attempt

* "Yes, it can stay." -> act2_introduction

=== act2_introduction ===
Gardener Ana: "Welcome to the garden! Ready to learn about flowers?"

* "Absolutely, let's get watering!" -> act2_question1
* "I’m not sure, I’m not a gardener." -> act2_retry_introduction

=== act2_retry_introduction ===
Ana: "No worries! I'll guide you through. Want to try again?"

* "Absolutely, let's get watering!" -> act2_question1

=== act2_question1 ===
Roses are beautiful flowers that come in many colors. They need lots of water to grow big and strong. 

Ana: "This rose bush needs plenty of water. How much would you give it?"

Go to the pond and take four full buckets of water.

* Pond -> pond

=== pond ===
* 2 Full Bucket -> failure1
* 4 Full Buckets -> Success1

=== failure1 ===
Lose Attempt

"Oops! Roses need four full buckets of water. Try again!"

* 4 Full Buckets -> Success1

=== Success1 ===
"Well done! Roses love plenty of water."

* Next Quest -> Question2

=== Question2 === 
Tulips are colorful flowers that need just a little water to stay healthy and bright

These tulips require less water. What's your plan?

Go to the pond and take 3 bucket of water.

* Pond -> pond2

=== pond2 === 

* 3 Full Bucket -> Success2 
* 1 Full Buckets -> failure2

=== failure2 ===
Lose Attempt

Oops! Tulips need three buckets. Try again!

* 3 Full Bucket -> Success2

=== Success2 === 
Great job! Tulips need 3 buckets.

* Next Quest -> Question3

=== Question3 ===
Lilies are elegant flowers that love damp soil but don't like too much water.

"Lilies thrive in moist soil but not soggy. How much water?

Go to the pond and take two buckets of water.

* Pond -> pond3

=== pond3 ===

* 2 Full Bucket -> Success3 
* 1 Full Buckets -> failure3

=== failure3 ===
Lose Attempt

"Oops! Lilies need two buckets. Try again!

* 2 Full Bucket -> Success3 

=== Success3 ===

Nice work! Lilies like just two buckets.

Next Quest -> Question4

=== Question4 ===

Cacti are tough plants that live in the desert. They need just a sprinkle of water to stay alive.

This cactus barely needs any water. What would you do?"

Go to the pond and take one bucket of water.

Pond -> pond4

=== pond4 ===

* 1 Full Bucket -> Success4 
* 2 Full Buckets -> failure4

=== failure4 === 
Lose Attempt

Oops! Cacti need just a sprinkle. Try again!

* 1 Full Bucket -> Success4 

=== Success4 ===

Perfect! Cacti only need a tiny bit of water.

* Guide Feedback -> Good_Ending

=== Good_Ending ===
Congratulations, You've successfully learned about animals and plants, and proven yourself as a good learner! Your love and care have made the zoo a happier and garden alive!

-> END







    
