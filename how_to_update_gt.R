# pull latest updates from rstudio/gt
# go to the gh-pages branch

# location to store build of gt
build_dir <- file.path(tempdir())

# build gt
devtools::build(pkg = "C:/Users/sjobergd/Documents/GitHub/gt",
                path = build_dir)

# path to *.tar.gz
pkg_path <- fs::path_norm(file.path(build_dir, "gt_0.1.0.tar.gz"))

# add package to drat
drat::insertPackage("C:/Users/sjobergd/Desktop/test/gt_0.1.0.tar.gz", 
                    repodir = here::here(), 
                    commit = FALSE)

