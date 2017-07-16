#' @import shiny
#' @export
chatR <- function() {
  ui <- miniUI::miniPage(
    miniUI::gadgetTitleBar("Get R help!"),
    miniUI::miniContentPanel(
      tags$div(
        HTML("<script src='https://cdn.slaask.com/chat.js'></script><BR/><script>_slaask.init('463d098847c4a580fdc9ed29ec2d2994');</script>")
      )
    )
  )

  server <- function(input, output, session) {

  }

  runGadget(ui, server)
}
