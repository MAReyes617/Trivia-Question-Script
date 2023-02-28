#!/bin/bash

# Define the questions and answers
questions=(
  "What is the capital of France?|A. Paris|B. Rome|C. Madrid|D. Berlin|A"
  "What is the largest continent?|A. Europe|B. Asia|C. North America|D. Africa|B"
  "What is the smallest country in the world?|A. Vatican City|B. Monaco|C. Liechtenstein|D. San Marino|A"
)

# Display the rules
echo "Welcome to the multiple choice game! You will be asked 3 questions."
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


questions=(
    'Question #1, What does the pwd command do ?
A) Nothing 
B) Show Location
C) Shows Password
D) Moves Within Directory | D'
#Begin Game
echo 'Hello & Welcome to AWS Jeporady!'
sleep 1
echo 'Before we get started, What is the contestants name?!'

echo ' Welcome to the show , Now lets get started!'
sleep 1 
score=0
for questions in "${questions}"
do
  q=${questions%|*}
  a=${questions#*|}
  attempts=0
  while [ $attempts -lt 3 ]
  do
    echo "$q"
    read -p "Enter your answer: " answer
    if [ "$answer" == "$a" ]
    then
      echo "Correct!"
      score=$((score+10))
      break
    else
      echo "Incorrect. Please try again."
      attempts=$((attempts+1))
    fi
  done
done

echo 'Question #1, What does the pwd command do ?
A) Nothing 
B) Show Location
C) Shows Password
D) Moves Within Directory '
read 