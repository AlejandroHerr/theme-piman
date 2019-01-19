function rasp; set_color -o c51a4a; end
function leaf; set_color -o 6cc04a; end
function snd; set_color -o 51a4dc; end # blue
function trd; set_color -o f06; end # pink ?
function dim; set_color    666; end # grey
function off; set_color normal; end # off
function bold; set_color -o fff; end # off

function fish_greeting
  echo ""(leaf)"
        .~~.   .~~.   "(off)"                   _                          _ "(leaf)"
      '. \ ' ' / .'   "(off)"   ___ ___ ___ ___| |_ ___ ___ ___ _ _    ___|_|"(rasp)"
       .~ .~~~..~.    "(off)"  |  _| .'|_ -| . | . | -_|  _|  _| | |  | . | |"(rasp)"
      : .~.'~'.~. :   "(off)"  |_| |__,|___|  _|___|___|_| |_| |_  |  |  _|_|"(rasp)"
     ~ (   ) (   ) ~  "(off)"              |_|                 |___|  |_|    "(rasp)"
    ( : '~'.~.'~' : )
     ~ .~ (   ) ~. ~  "(off)(bold)"  "(hostname)(hostname -I | awk '{print $1}')""(rasp)"
      (  : '~' :  )    
       '~ .~~~. ~'    "(off)(leaf)"  System:"(off)" "(uname -osrmp)""(rasp)"
           '~'        "(off)(leaf)"  Uptime:"(off)" "(uptime -p)""(rasp)"
"
end