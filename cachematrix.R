## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

  
  # Took original code, changed 'm' to 'struggle', and "mean" to "solve"
  makeCacheMatrix <- function(x = matrix()) {
    struggle <- NULL
    set <- function(y) {
      # will have a 2nd function written inside of makeCacheMatrix with paramters
      x <<- y
      struggle <<- NULL
    }
    get <- function() x
    # get/create the value of the matrix
    setsolve <- function(solve) struggle <<- solve
    getsolve <- function() s
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
    
  }

  ##Took original code, changed 'm' to 'i', and "mean" to "solve"
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    struggle <- x$getsolve()
    if(!is.null(s)) {
      message("getting cached data")
      return(struggle)
    }
    data <- x$get()
    struggle <- solve(data, ...)
    x$setsolve(struggle)
    s
  }
  

