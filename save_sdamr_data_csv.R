library(sdamr)
data_files <- list.files("~/Documents/GitHub/sdam-r/data/")
data_names <- unlist(strsplit(data_files,".rda"))

for(nam in data_names) {
  dat <- eval(call("data",nam))
  write.csv(get(dat),file=paste0("docs/data/",nam,".csv"), row.names = FALSE)
}