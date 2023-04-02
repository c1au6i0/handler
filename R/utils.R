#' Checked required arg
#'
#' Function that handle missing arguments. It checks if there are required arguments that are missng and
#' print a message. It is supposed to be used inside a function.
#'
#' @param required_arg Vector of required arguments.
#' @param get_arg If TRUE output a list of arguments.
#' @export
handle_required_args <- function(required_arg, get_arg = FALSE) {

  passed <- as.list(sys.call(-1))[-1]
  required_arg_missing <- required_arg[!required_arg %in% names(passed)]

  if (length(required_arg_missing) != 0) cli::cli_abort("The argument{?s} {.field {required_arg_missing}} {?is/is/are} required.")

  if (get_arg) return(passed)

}
