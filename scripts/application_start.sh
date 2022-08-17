#!/bin/bash

#give permission for everything in the zing directory
sudo chmod -R 777 /home/ec2-user/zing`

#navigate into our working directory where we have all our github files
cd /home/ec2-user/zing

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
# loads nvm	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# loads nvm bash_completion (node is in path now)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

#install node modules
npm install

#start our node app in the background
node ./bin/www > app.out.log 2> app.err.log < /dev/null