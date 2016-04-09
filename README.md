# cheat
Installation:

1. Put the cheat script somewhere on your computer. I keep it in a folder at ~/Scripts.
2. Copy and paste the following code into your bashrc, editing the path if necessary:

   if [ -f $HOME/Scripts/cheat.sh ]; then
   source $HOME/Scripts/cheat.sh
   fi
  
Create a new cheatsheet:

   ```cheat make bashnav```

Edit a cheatsheet:

   ```cheat edit bashnav```

Append an item to a cheatsheet:

   ```cheat add bashnav "Ctrl-x\ttoggle end/start of a line"```

Remove or "pop" the last line from the file (useful if you've made a mistake)

   ```cheat pop bashnav```

Display which cheatsheets you have:

   ```cheat ls```
  
Finally, the one you actually care about, display the cheatsheet:

   ```cheatsheet bashnav```

Which on my system currently echos back:

   Ctrl-b        back a character
   
   Ctrl-f        forward a character
   
   Alt-b         back a word
   
   Alt-f         forward a word
   
   Ctrl-a        go to start of line
   
   Ctrl-e        go to end of line
   
   Ctrl-x        toggle end/start of line
   
