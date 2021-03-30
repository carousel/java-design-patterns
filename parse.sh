#! /usr/bin/zsh

#line starts with open brace and number
regex='^[\[][0-9]'
url=http://localhost:8888/api/users/jobs/upload-patterns
 while read line; 
do 
    if [[ $line =~ $regex ]]
    then
        #send line to antitask
        curl -d $line -X POST $url -H "Content-Type:application/json"
    fi
done < patterns.md
