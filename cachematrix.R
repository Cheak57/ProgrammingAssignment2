## Put comments here that give an overall description of what your
## functions do

## Very similar to the example only matrix instead of numeric

makeCacheMatrix <- function(x = matrix()) 
{
  m <- NULL
  set <- function(y) 
  {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(set = set, get = get,
  setinv = setinv,
  getinv = getinv)
}


## Getting inverse matrix and using 'solve' to calculate
cacheSolve <- function(x, ...) 
{

  m <- x$getinv() #inversed matrix
  if (!is.null(m)) 
  {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat, ...)
  x$setinv(m)
  m
}
