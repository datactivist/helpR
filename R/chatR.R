#' @export
chatR <- function() {
  page <- file(paste0(tempdir(), "/chatR.html"))
  toWrite <- c("<!DOCTYPE html>",
               "<html>",
               "<head>",
               "<meta charset=\"utf-8\"/>",
               "<script src='https://embed.small.chat/T011ZM17GFQG01252DHAG5.js' async></script>")
  writeLines(toWrite, page)
  close(page)
  rstudioapi::viewer(paste0(tempdir(), "/chatR.html#chat-open"))
}
