## The two functions are intended to get the inversr of a matrix 
##that we insert by first get the cache with the funcition makeCacheMatrix
## and then use the cahe in the function cacheSolve to get the inverse function

##Get the cache to provide data for the second function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(z) m <<- z
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}



## Use the data provided by the first function to get the inverse matrix

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  data <- x$get()
  m <- solve(data)
  x$setmatrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
