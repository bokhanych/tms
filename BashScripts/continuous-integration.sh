#!/bin/bash

#download page
wget -O web-page https://www.atlassian.com/continuous-delivery/continuous-integration

#count of phrases
echo -n "Count of continuous integration: " 
grep -oi "continuous integration" web-page | wc -l

#find and replace
sed -i "s%continuous integration%CI_abbreviation%gI" web-page

#count of abbreviation
echo -n "Count of CI_abbreviation: " 
grep -oi "CI_abbreviation" web-page | wc -l