gc_content <- function(dna_seq) {

  #Check input
  if (!is.character(dna_seq) || length(dna_seq) != 1) {
    stop("Please provide one DNA sequence.")
    }

  #Convert into uppercase
  dna_seq <- toupper(dna_seq)

  #Split sequence into individual letters
  bases <- strsplit(dna_seq, "") [[1]]

  #Assign DNA base
  correct_bases <- c("A","T", "C", "G")

  for (base in bases) {
    if (!(base %in% correct_bases)) {
      stop("DNA sequence can contain only A, T, C, G.")
    }
  }

   #count G and C content
   GC <- 0
   for (base in bases) {
     if(base == "C" || base == "G") {
       GC <- GC + 1
     }
   }

   #GC percentage
   GC_percent <- (GC / length(bases)) * 100
   return(paste(GC_percent, "%", sep = ""))
}