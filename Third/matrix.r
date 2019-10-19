buff_tail = c(10,1,37,5,12)
garden_bee = c(8, 3, 9, 6, 4)
red_tail = c(18, 9, 1, 2, 4)
carder_bee = c(8, 27, 6, 32, 23)
honey_bee = c(12, 13, 16, 9, 10)
plant_names = c("Thistle", "Vipers", "Golden rain", "Yellow alfalfa", "blackberry")
beesnames <- c("buff_tail", "garden_bee", "red_tail", "carder_bee", "honey_bee")
bees <- c(buff_tail, garden_bee, red_tail, carder_bee, honey_bee)
mat = matrix(bees, 5, 5, byrow=TRUE, dimnames=list(beesnames,plant_names))
mat
df = data.frame(buff_tail, garden_bee, red_tail, carder_bee, honey_bee, row.names = plant_names)

l = list(num = c(1L, 2L, 4L), s = c("hello", "world", "!"), real = c(4.7, 6.3, 7.7, 8.1))
l
