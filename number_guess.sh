#!/bin/bash
PSQL="psql --username freecodecamp --dbname=number_guess -t --no-align -c"

rand_num=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username:"
read username
username_search=$($PSQL "select username from data where username='$username'")
if [[ -z $username_search ]]
then
  echo "Welcome, $username! It looks like this is your first time here."
  insert_new_user_result=$($PSQL "insert into data(username, games_played) values('$username', 0)")
  games_played=0
else
  games_played=$($PSQL "select games_played from data where username='$username'")    
  best_game=$($PSQL "select best_game from data where username='$username'")
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

funct() {
  read guess
  
  if [[ ! "$guess" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else

    if [[ $guess > $rand_num ]]
    then
      echo "It's lower than that, guess again:"
    fi

    if [[ $guess < $rand_num ]]
    then
      echo "It's higher than that, guess again:"
    fi
    
    if [[ $guess = $rand_num ]]
    then
      echo "You guessed it in $count tries. The secret number was $rand_num. Nice job!"
      update_games_played_result=$($PSQL "update data set games_played=$(($games_played+1)) where username='$username'")
      if [[ -z $best_game ]] 
      then
          update_best_game_result=$($PSQL "update data set best_game=$count where username='$username'")
      else
        if [[ $count < $best_game ]]
        then
          update_best_game_result=$($PSQL "update data set best_game=$count where username='$username'")
        fi
      fi
    fi

  fi
}

echo "Guess the secret number between 1 and 1000:"

echo $rand_num

count=1
while [[ $guess != $rand_num ]]
do
  funct
  count=$(($count+1))
done
