## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Hi, this is me. How u doin?
## This is a function that creates an object which caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(x) {
    mtx <<- x;
    inverse <<- NULL;
  }
  get <- function() return(mtx);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))  
}


## Write a short comment describing this function
## Hello, this is me again. Glad u r still here.
## This is a function that computes the inverse of the matrix returned above.
## Cool, right? If it has already been calculated, and the matrix is still
## as it was before, the inverse should be retrieved from cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- mtx$getinv()
  if(!is.null(inverse)) {
    message("Getting cached data...")
    return(inverse)
  }
  data <- mtx$get()
  invserse <- solve(data, ...)
  mtx$setinv(inverse)
  return(inverse)
}
