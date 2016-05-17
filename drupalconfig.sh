##########################################################################
#### Script to confgure Drupal Project for Starter Pack
##########################################################################

#### Instructions


### Run the script in the terminal window by typing

###        bash drupalconfig.sh 

#### End of Instructions
##########################################################################


echo
echo "     START OF AUTOMATED CONFIGURATION"
echo

# set the hostname variable
CODIO_HOST=`cat /etc/hostname`  
WORKSPACE="$HOME/workspace"

echo -e '\E[1;33;44m' "Creating the MySQL database that Drupal will use"; tput sgr0
echo
echo This script uses the default password 'password' - IT IS NOT SECURE!
echo "CREATE DATABASE drupal;" > msqlcmds.txt
echo "USE drupal;" >> msqlcmds.txt
echo "CREATE USER drupaluser@localhost;" >> msqlcmds.txt
# note escaped quotes on line below
echo "SET PASSWORD FOR drupaluser@localhost= PASSWORD(\"password\");" >> msqlcmds.txt
########################                  drupaluser    ########

echo "GRANT ALL PRIVILEGES ON drupal.* TO drupaluser@localhost IDENTIFIED BY 'password';" >> msqlcmds.txt
########################                                         wordpressuser      ########
echo "FLUSH PRIVILEGES;" >> msqlcmds.txt
echo "exit" >> msqlcmds.txt

echo -e '\E[1;33;44m' "The password for the MySQL server is blank!"; tput sgr0
echo -e '\E[1;33;44m' "You should change it after instalation."; tput sgr0
echo - 
echo -e '\E[1;33;44m' "For now - Just press the enter key to enter the blank password"; tput sgr0
mysql -u root -p < msqlcmds.txt -v


rm drupalconfig.sh