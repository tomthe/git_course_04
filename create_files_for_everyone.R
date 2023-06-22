# Create the subdirectory if it doesn't exist
dir <- "files_for_everyone"
if (!dir.exists(dir)) {
  dir.create(dir)
}

# Loop to create the files for everyone
for (i in 1:30) {
  # Generate the file name with the number
  file_name <- paste0(dir, "/file_", i, ".txt")
  
  # Create and write content to the file
  writeLines("This is some content.", file_name)
  
  # Print a message indicating the file creation
  cat("Created file:", file_name, "\n")
}

# Loop to create some useless files
for (i in 1:30) {
  # Generate the file name with the number
  file_name <- paste0(dir, "/file_", i, ".csv")
  
  # Create and write content to the file
  writeLines("This, is, some, data!\n1,2,3,4", file_name)
  
  # Print a message indicating the file creation
  cat("Created file:", file_name, "\n")
}
