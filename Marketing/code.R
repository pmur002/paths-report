
library(grid)

grid.newpage()

png("paths.png", bg="transparent")

grid.circle(gp=gpar(col=NA, fill="grey80"))

grad <- linearGradient(rgb(1, c(0,1,0), 0), x1=.5, x2=.5)
grid.fillStroke(textGrob("stroking\nand\nfilling\npaths",
                         gp=gpar(cex=7, lineheight=.8,
                                 fontfamily="Baloo 2", fontface="bold")),
                gp=gpar(col="black", fill=grad))

dev.off()
