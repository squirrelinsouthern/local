if [ -d $1 ]; then
  echo 'error: dir exists'
  exit
else
  mkdir -p $1/css $1/js
  touch $1/css/style.css $1/js/main.js $1/index.html

  echo -e "<!DOCTYPE>" > $1/index.html
  echo -e "<title>Hello</title>" >> $1/index.html
  echo -e "<h1>Hi</h1>" >> $1/index.html
 
  echo -e "h1{color: red;}" > $1/css/style.css
 
  echo -e "var string = \"Hello World\"" > $1/js/main.js
  echo -e "alert(string)" >> $1/js/main.js
 
  echo 'success'
  exit
fi

