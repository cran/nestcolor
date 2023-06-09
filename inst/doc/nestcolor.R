## ---- echo=FALSE, fig.height=0.375--------------------------------------------
library(grid)
library(nestcolor)

plot_pal <- function(x) {
  grid.newpage()
  pushViewport(plotViewport(rep(0, 4)))
  pushViewport(viewport(layout = grid.layout(1, ncol = length(x))))
  for (i in seq_along(x)) {
    grid.rect(
      gp = gpar(fill = x[i], col = NA),
      vp = viewport(layout.pos.col = i, layout.pos.row = 1)
    )
  }
}

plot_pal(color_palette(n = 20, palette = "nest"))

## ---- echo=FALSE, fig.height=0.375--------------------------------------------
plot_pal(color_palette(n = 20, palette = "stream"))

## ---- echo=FALSE, fig.height=0.375--------------------------------------------
plot_pal(color_palette(n = 20, palette = "viridis"))

## ---- echo=FALSE, fig.height=0.375--------------------------------------------
plot_pal(color_palette(n = 20, palette = "accessible"))

## -----------------------------------------------------------------------------
library(ggplot2)
library(nestcolor)

g <- ggplot(msleep, aes(vore)) +
  geom_bar(aes(fill = conservation))
g

## -----------------------------------------------------------------------------
library(ggplot2)
library(nestcolor)

pal <- color_palette(n = 6, "viridis")
options(
  ggplot2.discrete.colour = pal,
  ggplot2.discrete.fill = pal
)

g <- ggplot(msleep, aes(vore)) +
  geom_bar(aes(fill = conservation))
g

