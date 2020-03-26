confussionMatrixPlot <- function(table) {
  table %>% ggplot(aes(x = Prediction, y = Reference, fill = Freq)) +
    geom_tile() +
    geom_text(aes(label = Freq), fontface = "bold", color = "white") +
    theme_minimal() +
    theme(legend.position = "none")
}