#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games,teams")
cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  if [[ $year != 'year' ]]
  then
  team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    if [[ -z $team_id ]]
    then
      insert_team=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
    fi
  team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
    if [[ -z $team_id ]]
    then
      insert_team=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
    fi
  winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
  insert_games=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($year,'$round',$winner_id,$opponent_id,$winner_goals,$opponent_goals)")
  fi
done

