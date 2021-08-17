## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## updated default example code - 'm' is now 'Q' and 'mean' is now 'Solve'
# makeCacheMatrix creates a matrix and inverse
makeCacheMatrix <- function(x = matrix()) {
  Q <- NULL
  #set inverse as Null
  set <- function(y) {
    x <<- y
    Q <<- NULL
  }
  get <- function() x
  #function to get the matrix
  setsolve <- function(solve) Q <<- solve
  getsolve <- function() Q
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}

## updated default example code - 'm' is now 'Q' and mean is now 'Solve'
cacheSolve <- function(x, ...) {
  
  Q <- x$getsolve()
  if(!is.null(Q)) {
    message("getting cached data")
    #if the inverse already calculated will just pull from the cache
    return(Q)
    ## if not already calculated, create inverse return a matrix that is the inverse of 'x'
  }
  data <- x$get()
  Q <- solve(data, ...)
  x$setsolve(Q)
  Q
}