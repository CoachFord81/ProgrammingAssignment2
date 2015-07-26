## Contains a list of functions which:
## set the value of the vector, get the value of the vector
## set the inverse of the matrix, get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }

  get <- function() x
  setmatrix <- function(solve) m <<-solve
  getmatrix <- function() m
  list(set = set,get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Checks to see if the inverse of the matrix has already been computed
## If so, gets the inverse of the matrix from cache and skips computation
## If not, calculates the inverse of the matrix and sets matrix in cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting catched data")
    return(m)
  }
  data <- x$get
  m <- solve(data, ...)
  x$getmatrix(m)
  m
}
