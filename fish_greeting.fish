__piman_theme

function fish_greeting
  echo ""(leaf)"
        .~~.   .~~.   "(off)"                   _                          _ "(leaf)"
      '. \ ' ' / .'   "(off)"   ___ ___ ___ ___| |_ ___ ___ ___ _ _    ___|_|"(rasp)"
       .~ .~~~..~.    "(off)"  |  _| .'|_ -| . | . | -_|  _|  _| | |  | . | |"(rasp)"
      : .~.'~'.~. :   "(off)"  |_| |__,|___|  _|___|___|_| |_| |_  |  |  _|_|"(rasp)"
     ~ (   ) (   ) ~  "(off)"              |_|                 |___|  |_|    "(rasp)"
    ( : '~'.~.'~' : )
     ~ .~ (   ) ~. ~  "(off)(bold)"  "(hostname)" ("(hostname -I | awk '{print $1}')")"(rasp)"
      (  : '~' :  )    
       '~ .~~~. ~'    "(off)(leaf)"  System:"(off)" "(uname -osrmp)""(rasp)"
           '~'        "(off)(leaf)"  Uptime:"(off)" "(uptime -p)""(rasp)"
"
end