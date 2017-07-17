#' @export
chatR <- function() {
  page <- file(paste0(tempdir(), "/chatR.html"))
  toWrite <- c("<!DOCTYPE html>",
               "<html>",
               "<head>",
               "<meta charset=\"utf-8\"/>",
               "<script src='https://cdn.slaask.com/chat.js'></script><BR/><script>_slaask.init('463d098847c4a580fdc9ed29ec2d2994');",
               "</script>")
  writeLines(toWrite, page)
  close(page)
  rstudioapi::viewer(paste0(tempdir(), "/chatR.html#chat-open"))
}
