const HYPER = ["control", "shift", "command", "option"]

// HYPER + `: show/hide VSCode
Key.on("`", HYPER, () => {
  const app = App.focused()

  if (app && app.name() === "Code") {
    App.get("Code").hide()
  } else {
    App.launch("Visual Studio Code", { focus: true })
  }
})

// option + `: show/hide Hyper
Key.on("`", ["option"], () => {
  const app = App.focused()

  if (app && app.name() === "Hyper") {
    App.get("Hyper").hide()
  } else {
    App.launch("Hyper", { focus: true })
  }
})

// HYPER + left: maximise left
Key.on("left", HYPER, () => {
  const screenFrame = Screen.main().visibleFrame()
  const window = Window.focused()
  const newWindowFrame = {
    x: 0,
    y: 0,
    width: screenFrame.width / 2,
    height: screenFrame.height
  }

  window && window.setFrame(newWindowFrame)
})

// HYPER + left: maximise right
Key.on("right", HYPER, () => {
  const screenFrame = Screen.main().visibleFrame()
  const window = Window.focused()
  const newWindowFrame = {
    x: screenFrame.width / 2,
    y: 0,
    width: screenFrame.width / 2,
    height: screenFrame.height
  }

  window && window.setFrame(newWindowFrame)
})

// HYPER + left: maximise
Key.on("up", HYPER, () => {
  const window = Window.focused()

  window && window.maximize()
})

// HYPER + left: center current window
Key.on("down", HYPER, () => {
  const screenFrame = Screen.main().visibleFrame()
  const window = Window.focused()

  if (window) {
    const { width, height } = window.size()
    const topLeft = {
      x: (screenFrame.width - width) / 2,
      y: (screenFrame.height - height) / 2
    }

    window.setTopLeft(topLeft)
  }
})
