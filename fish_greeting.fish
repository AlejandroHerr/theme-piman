function rasp; set_color -o c51a4a; end
function leaf; set_color -o 6cc04a; end
function snd; set_color -o 51a4dc; end # blue
function trd; set_color -o f06; end # pink ?
function dim; set_color    666; end # grey
function off; set_color normal; end # off

function fish_greeting
  echo (dim)(uname -mnprs)(off)
  echo ""(leaf)"
        .~~.   .~~.
      '. \ ' ' / .'   "(rasp)"
       .~ .~~~..~.    "(off)"                   _                          _ "(rasp)"
      : .~.'~'.~. :   "(off)"   ___ ___ ___ ___| |_ ___ ___ ___ _ _    ___|_|"(rasp)"
     ~ (   ) (   ) ~  "(off)"  |  _| .'|_ -| . | . | -_|  _|  _| | |  | . | |"(rasp)"
    ( : '~'.~.'~' : ) "(off)"  |_| |__,|___|  _|___|___|_| |_| |_  |  |  _|_|"(rasp)"
     ~ .~ (   ) ~. ~  "(off)"              |_|                 |___|  |_|    "(rasp)"
      (  : '~' :  )
       '~ .~~~. ~'
           '~'
"
end