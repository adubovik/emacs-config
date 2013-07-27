; my personal abbreviations
(define-abbrev-table 'global-abbrev-table '(

    ("alpha" "α" nil 0)
    ("beta" "β" nil 0)
    ("gamma" "γ" nil 0)
    ("rho" "ρ" nil 0)
    ("psi" "ψ" nil 0)
    ("phi" "φ" nil 0)
    ("omega" "ω" nil 0)
    ("theta" "θ" nil 0)

    ;; math/unicode symbols
    ("8in" "∈" nil 0)
    ("8nin" "∉" nil 0)
    ("8inf" "∞" nil 0)
    ("8luv" "♥" nil 0)
    ("8smly" "☺" nil 0)

    ;; email
    ("8wdy" "wordy-english@yahoogroups.com" nil 0)

    ;; computing tech
    ("8wp" "Wikipedia" nil 0)
    ("8ms" "Microsoft" nil 0)
    ("8g" "Google" nil 0)
    ("8qt" "QuickTime" nil 0)
    ("8it" "IntelliType" nil 0)
    ("8msw" "Microsoft Windows" nil 0)
    ("8win" "Windows" nil 0)
    ("8ie" "Internet Explorer" nil 0)
    ("8ahk" "AutoHotkey" nil 0)
    ("8pr" "POV-Ray" nil 0)
    ("8ps" "PowerShell" nil 0)
    ("8mma" "Mathematica" nil 0)
    ("8js" "javascript" nil 0)
    ("8vb" "Visual Basic" nil 0)
    ("8yt" "YouTube" nil 0)
    ("8ge" "Google Earth" nil 0)
    ("8ff" "Firefox" nil 0)
    ("8sl" "Second Life" nil 0)
    ("8ll" "Linden Labs" nil 0)
    ("8ee" "ErgoEmacs" nil 0)

    ;; normal english words
    ("8alt" "alternative" nil 0)
    ("8char" "character" nil 0)
    ("8def" "definition" nil 0)
    ("8bg" "background" nil 0)
    ("8kb" "keyboard" nil 0)
    ("8ex" "example" nil 0)
    ("8kbd" "keybinding" nil 0)
    ("8env" "environment" nil 0)
    ("8var" "variable" nil 0)
    ("8ev" "environment variable" nil 0)
    ("8cp" "computer" nil 0)

    ;; sig
    ("8xl" "Xah Lee" nil 0)
    ("8xs" " Xah ∑ xahlee.org ☄" nil 0)

    ;; url
    ("8uxl" "http://xahlee.org/" nil 0)
    ("8uxp" "http://xahporn.org/" nil 0)
    ("8uee" "http://ergoemacs.org/" nil 0)
    ("8uvmm" "http://VirtualMathMuseum.org/" nil 0)
    ("8u3dxm" "http://3D-XplorMath.org/" nil 0)

    ;; emacs regex
    ("8num" "\\([0-9]+?\\)" nil 0)
    ("8str" "\\([^\"]+?\\)\"" nil 0)
    ("8curly" "“\\([^”]+?\\)”" nil 0)

    ;; shell commands
    ("8ditto" "ditto -ck --sequesterRsrc --keepParent src dest" nil 0)
    ("8im" "convert -quality 85% " nil 0)
    ("8ims" "convert -size  -quality 85% " nil 0)
    ("8im256" "convert +dither -colors 256 " nil 0)
    ("8imf" "find . -name \"*png\" | xargs -l -i basename \"{}\" \".png\" | xargs -l -i  convert -quality 85% \"{}.png\" \"{}.jpg\"" nil 0)

    ("8f0" "find . -type f -empty" nil 0)
    ("8f00" "find . -type f -size 0 -exec rm {} ';'" nil 0)
    ("8chmod" "find . -type f -exec chmod 644 {} ';'" nil 0)
    ("8chmod2" "find . -type d -exec chmod 755 {} ';'" nil 0)

    ("8unison" "unison -servercmd /usr/bin/unison c:/Users/xah/web ssh://xah@example.com//Users/xah/web" nil 0)
    ("8sftp" "sftp xah@xahlee.org" nil 0)
    ("8ssh" "ssh xah@xahlee.org" nil 0)
    ("8rsync" "rsync -z -r -v -t --exclude=\"*~\" --exclude=\".DS_Store\" --exclude=\".bash_history\" --exclude=\"**/xx_xahlee_info/*\"  --exclude=\"*/_curves_robert_yates/*.png\" --exclude=\"logs/*\"  --exclude=\"xlogs/*\" --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/" nil 0)

    ("8rsync2" "rsync -r -v -t --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/web/" nil 0)
    ("8rsync3" "rsync -r -v -t --delete --exclude=\"**/My *\" --rsh=\"ssh -l xah\" ~/Documents/ xah@example.com:~/Documents/" nil 0)
    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;; turn on abbrev mode
(abbrev-mode 1)
