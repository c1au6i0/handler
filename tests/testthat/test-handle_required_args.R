fun_x <- function(a, b = 17, c = NULL, get_arg = FALSE){
  handle_required_args(required_arg = c("a", "b"), get_arg = get_arg)
}



fun_x(a = 15)

fun_x(a = 15, b = 16, get_arg = TRUE)
