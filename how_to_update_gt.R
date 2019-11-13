# pull latest updates from rstudio/gt
# go to the gh-pages branch

# location to store build of gt
build_dir <- file.path(tempdir())

# create source package ---------------------------------------------
# build gt
devtools::build(pkg = "C:/Users/sjobergd/Documents/GitHub/gt",
                path = build_dir)

# path to *.tar.gz
pkg_path <- fs::path_norm(file.path(build_dir, "gt_0.1.0.tar.gz"))

# add package to drat
drat::insertPackage(pkg_path, 
                    repodir = here::here(), 
                    commit = FALSE)

# crate binary package -----------------------------------------------
# build gt
devtools::build(pkg = "C:/Users/sjobergd/Documents/GitHub/gt",
                path = build_dir,
                binary = TRUE)

# path to *.tar.gz
pkg_path <- fs::path_norm(file.path(build_dir, "gt_0.1.0.zip"))

# add package to drat
drat::insertPackage(pkg_path,
                    repodir = here::here(),
                    commit = FALSE)

