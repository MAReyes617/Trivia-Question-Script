#!/bin/bash

# Define the questions and answers
questions=(
  "What does the pwd command do?|A. Location in Directoy|B. Shows Password|C. Passes to word doc|D. Copies files to folder|A"
  "What is NOT a loop?|A. While|B. If|C. Until|D. For|B"
  "What does the chmod command do?|A. Change permissions|B. Change monitors|C. Change users|D. Change shell|A"
)

# Display the rules
echo "Hello & Welcome to AWS Jeporady!!"
sleep 1
echo "You will be asked 3 questions."
sleep 1
echo "Each correct answer is worth 10 points and each incorrect answer is worth -5 points."

# Start the game
score=0
for question in "${questions[@]}"
do
  q=${question%|*}
  a=${question#*|}
  options=(${a//|/ })
  correct=${options[-1]}
  options=(${options[@]::${#options[@]}-1})
  echo "$q"
  echo "Options:"
  for option in "${options[@]}"
  do
    echo "  $option"
  done
  read -p "Enter your answer: " answer
  if [ "$answer" == "$correct" ]
  then
    echo "Correct!"
    score=$((score+10))
  else
    echo "Incorrect. The correct answer is $correct."
    score=$((score-5))
  fi
done

# Display the final score
echo "Your final score is $score. Good job!"
