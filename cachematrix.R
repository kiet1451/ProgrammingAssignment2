makeCacheMatrix <- function(x=numeric()){
  invert <- NULL
  set <- function(y){
    x <<- y
    invert <<- NULL
  }
  get <- function() x
  setInvert <- function(setMatrix) invert <<- setMatrix
  getInvert <- function() Invert
  list(set = set, get = get, setInvert = setInvert, getInvert = getInvert)
}

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