% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_ultrachord.R
\name{theme_ultrachord}
\alias{theme_ultrachord}
\title{Set Ultrachord theme for ggplot2}
\usage{
theme_ultrachord(base_size = 11, base_family = "", panel_grid_minor = TRUE)
}
\arguments{
\item{base_size}{\[type: numeric, default: 11\] The default font size.}

\item{base_family}{\[type: string, default: ""\] The name of a family of text or font.}

\item{panel_grid_minor}{\[type: logical, default: TRUE\] Boolean allows turning minor grids on or off.}
}
\value{

}
\description{
This function allows you to add the Ultrachord theme to your ggplot graphics.
}
\examples{

iris |>
	ggplot2::ggplot(ggplot2::aes(x = Sepal.Length, y = Sepal.Width)) +
	ggplot2::geom_point(ggplot2::aes(color = Species, shape = Species)) +
	ggplot2::labs(title = "Iris data", subtitle = "Classic data", x = "Sepal Length", y = "Sepal Width") +
	ggplot2::facet_grid(~ Species) +
	ultraPlot::theme_ultrachord()

data.frame(year = time(nhtemp), tmps = as.matrix(nhtemp)) |>
	ggplot2::ggplot(ggplot2::aes(x = year, y = tmps)) +
	ggplot2::geom_line() +
	# ggplot2::geom_hline(yintercept = 0, size = 1, colour = "#333333") +
	ggplot2::labs(title = "New Hampshire yearly temperatures", subtitle = "Collected between 1912 and 1971", x = "Year", y = "Average temperature") +
	ultraPlot::theme_ultrachord()

}
