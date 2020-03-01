#' @name GPL2025IDconvert
#' @author Xiang Li <ynaulx@@gmail.com>
#'
#' @title Convert Chip ID of the GPL2025 to GeneBank Accession and ENTREZID
#' @description
#' \code{GPL2025IDconverter} Convert Chip ID of the GPL2015 to GeneBank Accession and ENTREZID
#'
#' @param myID A vector of chip id
#
#' @examples
#' convert_id <- GPL2025IDconverter('Os.11182.1.S1_at')
#
#' @export
#'
#' @return Return a vector or a datafram
#'
GPL2025IDconverter <- function(myID){
  res <- GPL2025.final[GPL2025.final$ID %in% myID,]
  colnames(res) <- c('ChipID','GeneBank_Accession','ENTREZID')
  rownames(res) <- seq(1,nrow(res))
  return(unique(res))
}
