# the development version from GitHub (recommended)
devtools::install_github("pzhaonet/bookdownplus")
# or the stable version from CRAN
install.package("bookdownplus")

require(bookdownplus)
bd('ubt')

bookdownplus()
bookdownplus(template = 'ubt', render = TRUE)	
get_output()
bookdownplus(more_output = get_output())

get_template()

grep('_zh$', get_template()[, 'name'], value = TRUE)
bookdownplus(template = get_template()$name[1])

bd()

my_t <- get_template()
my_t <- my_t$name[my_t$location == 'local' & !grepl('_zh$', my_t$name)]
bd(my_t)

bookdownplus::share('your_template_name')