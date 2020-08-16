cacheSolve <- function(x,...) {
	invert <- x$getInvert()
	if(!is.null(invert)){
		message("getting cached data")
		return(invert)
	}
	data <- x$get()
	invert <- solve(data,...)
	x$setInvert(invert)
	invert
}