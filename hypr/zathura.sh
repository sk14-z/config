file="$(fd ".pdf$" /home/skiz/edu /home/skiz/library /home/skiz/notes | fzf --prompt="Select PDF: " --preview='pdftotext {} -')"

if [[ -n "$file" ]]; then
  nohup zathura "$file" >/dev/null 2>&1 &
  disown
fi

pkill -f "kitty.*ZATHURA_LAUNCHER"
