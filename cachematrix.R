## a function returning a cached matrix object closure

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
     x <<- y
     inv <<- NULL
  }
  get <- function() x
  setinverse <- function (newinv) inv <<- newinv
  getinverse <- function (inv)  
  
  return(list(set = set, get = get, getinverse = getinverse, setinverse = setinverse))
  
}


## a function that returns the inverse of a matrix, making use of caching

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        return(i)
        
}
