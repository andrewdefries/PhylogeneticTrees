################################################################################
library(shiny)
library(ape)
################################################################################
tree<-read.tree("LandPlants.newick")
################################################################################
shinyServer(function(input, output) {
	output$distPlot <- renderPlot({
#	plot(tree, root=FALSE)
#	unroot(tree)
	tree<-drop.tip(unroot(tree),tree$tip.label[1:input$obs])
	plot(tree, type="fan", edge.width=5, edge.color="blue")
})
################################################################################
})

