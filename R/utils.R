#' Checked required arg
#'
#' Function that handle missing arguments. It checks if there are required arguments that are missng and
#' print a message. It is supposed to be used inside a function.
#'
#' @param required_arg Vector of required arguments.
#' @export
handle_required_args <- function(required_arg) {

  env_fun <- sys.parent() + 1
  passed <- names(as.list(match.call(envir = parent.frame(env_fun))[-1]))
  required_arg_missing <- required_arg[!required_arg %in% passed]

  if (length(required_arg_missing) != 0) cli::cli_abort("The argument {.field {required_arg_missing}} are required.")
}
