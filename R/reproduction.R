
rep_bug <- function () {
  .libPaths(c(file.path(find.package("pak"), "library"), .libPaths()))
  prop <- pkgdepends::new_pkg_installation_proposal(".", config = list(library = .libPaths()[2]))
  prop$resolve()
  prop$solve()
  prop$download()
  prop$install()
}