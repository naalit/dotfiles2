edit:prompt = { edit:styled 'λ ' yellow; edit:styled (whoami)'@'(hostname) 'red'; edit:styled ' '(tilde-abbr $pwd) 'green'; edit:styled " → " yellow }
edit:rprompt = { edit:styled (date '+%H:%M %Y/%m/%d') 'bold;blue' }

fn ls [@a]{ e:ls --color=auto $@a }
fn gpmdp [@a]{ e:google-play-music-desktop-player $@a }