
#' Set Ultrachord theme for ggplot2
#'
#' This function allows you to add the Ultrachord theme to your ggplot graphics.
#'
#' @param base_size \[type: numeric, default: 11\] The default font size.
#' @param base_family \[type: string, default: ""\] The name of a family of text or font.
#' @param panel_grid_minor \[type: logical, default: TRUE\] Boolean allows turning minor grids on or off.
#'
#' @importFrom ggplot2 '%+replace%'
#' 
#' @return
#' @export
#'
#' @examples
#' 
#' iris |>
#' 	ggplot2::ggplot(ggplot2::aes(x = Sepal.Length, y = Sepal.Width)) +
#' 	ggplot2::geom_point(ggplot2::aes(color = Species, shape = Species)) +
#' 	ggplot2::labs(title = "Iris data", subtitle = "Classic data", x = "Sepal Length", y = "Sepal Width") +
#' 	ggplot2::facet_grid(~ Species) +
#' 	ultraPlot::theme_ultrachord()
#'
#' data.frame(year = time(nhtemp), tmps = as.matrix(nhtemp)) |>
#' 	ggplot2::ggplot(ggplot2::aes(x = year, y = tmps)) +
#' 	ggplot2::geom_line() +
#' 	# ggplot2::geom_hline(yintercept = 0, size = 1, colour = "#333333") +
#' 	ggplot2::labs(title = "New Hampshire yearly temperatures", subtitle = "Collected between 1912 and 1971", x = "Year", y = "Average temperature") +
#' 	ultraPlot::theme_ultrachord()
#'

theme_ultrachord <- function (base_size = 11, base_family = "", panel_grid_minor = TRUE) {
	ggplot2::theme_bw() %+replace% ggplot2::theme(
		plot.title = ggplot2::element_text(face = "bold", hjust = 1, margin = ggplot2::margin(0, 0, 5, 0, unit = "pt")), # 0.5 centres when position is set to "plot"
		plot.subtitle = ggplot2::element_text(hjust = 1, vjust = 0.015, margin = ggplot2::margin(0, 0, 5, 0, unit = "pt")),
		
		panel.background = ggplot2::element_blank(),
		# panel.border = ggplot2::element_rect(color = "#afafaf", fill = NA),
		axis.line = ggplot2::element_blank(),
		panel.border = ggplot2::element_blank(),
		
		panel.grid.minor = {if(panel_grid_minor) {
			ggplot2::element_line(color = "#454545", size = 0.135, linetype = "dotted")
		} else {
			ggplot2::element_blank()
		}},
		
		panel.grid.major = ggplot2::element_line(color = "#aaaaaa", size = 0.175, linetype = "longdash"),
		
		# axis.line = ggplot2::element_line(color = "#afafaf"),
		axis.ticks = ggplot2::element_line(color = "#aaaaaa"),
		
		strip.background = ggplot2::element_rect(fill = "white", colour = "#676767"),
		
		legend.position = "bottom",
		legend.title = ggplot2::element_text(vjust = 0.5) # adjust title position higher to key when bottom
	)
}
