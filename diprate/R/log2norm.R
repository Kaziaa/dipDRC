log2norm <- function(count, ids, norm_type=c('idx','ref')[1], 
	norm_id="0", norm_vals, norm_idx=1, zero=log2(0.999))
{
	#' log2 values normalized to some reference
	#'
	#' This function obtains log2 values of all \emph{count} and
	#' will normalize in one of two distinct ways:
	#' 1) using the position of each vector specified by \code{idx}
	#' or 2) using the position identified from matching \code{norm_id}
	#' to its position of the vector from \code{norm_val}
	#' e.g. norm_id = 3 could refer to a vector 'day' containing a time variable
	# made this modification on 2014-09-23, but should still work with older code
    #' @param count \emph{numeric} or \emph{integer}
    #' @param ids \emph{character}
    #' @param norm_type \emph{character} of either "idx" or "ref"
    #' @param norm_id \emph{character} matching some value in \code{ids}
    l2 <- log2(count)
		# finds time points with no cells (0), and replace it
		# with zero (log2(0.999)), so that the data can be displayed 
		# in log scale, yet easily found.
    l2[is.infinite(l2)] <- zero
	norm <- numeric()
	group <- as.character(unique(ids))

    if(norm_type=='idx')
    {
		for(i in group)
		{
			d <- l2[ids == i]
			norm <- append(norm, d - d[norm_idx])
		}
	
		norm
		
	}	else	{
	
		for(i in group)
		{
			norm_pos		<-	match(norm_id, as.character(norm_vals)[ids == i])
			d <- l2[ids == i]
			norm <- append(norm, d - d[norm_pos])
		}
		norm
	}

}
