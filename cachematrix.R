##  a pair of functions that cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  t <- NULL
  set <- function(x1) {
    x <<- x1
    t <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) t <<- solve
  getSolve <- function() t
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## This function computes the inverse of the special "matrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  t <- x$getSolve()
  if(!is.null(t)) {
    message("retrieving cached data")
    return(t)
  }
  d <- x$get()
  t <- solve(d, ...)
  x$setSolve(t)
  m
  }
