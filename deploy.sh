zip -r -q -o pack.zip  ./
curl -F "token=$TOKEN" -F "commit=$TRAVIS_COMMIT" -F "filename=@pack.zip" -H "Expect:" https://cloudreve.org/deploy.php
