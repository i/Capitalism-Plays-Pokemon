def pressButton(button):
  os.exec('xdotool windowactivate $wid')
  os.exec('xdotool windowactivate $WID')
  os.exec('sleep 0.1')
  os.exec('xdotool keydown ' + button)
  os.exec('sleep 0.125')
  os.exec('xdotool keyup ' + button)
