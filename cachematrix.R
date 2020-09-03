

# Below is the function to create a matrix object which caches its inverse 

makeCacheMatrix <- function(x = matrix()) {
  
  inverse1 <- NULL
  set <- function(z){
    x <<- z
    inverse1 <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inverse1 <<- solveMatrix
  getInverse <- function() inverse1
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



# From The below function the inverse of matrix is calculated that is returned by makeCacheMatrix function above.

cacheSolve <- function(x, ...) {
  # To return matrix that is inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inverse1)){
    message("getting cached data")
    return(inverse1)
  }
  data <- x$get()
  inverse1 <- solve(data)
  x$setInverse(inverse1)
  inverse1     
}
