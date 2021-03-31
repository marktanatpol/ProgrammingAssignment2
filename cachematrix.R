## setwd:('C:Users/Markt/Documents/R-Programming')
##
## set input x as a matrix
## set solved value "s" as a null
## changed reference "mean" to "solve"
makeCacheMatrix <- function(x = matrix(sample(1:200,20),9,9)) {
s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
##
## Changed reference "mean" to "solve"
cacheSolve <- function(x, ...) {
 m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
