## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function to create the inverse matrix

makeCacheMatrix <- function(m = matrix()) {

## set the matrix to zero
im<-NULL
## set the matrix
set<-function(matrix){

        m<<-matrix
        im<<-NULL
}

## get the matrix
get<-function(){
        ##return the matrix
        m
}

## set the inverse of the matrix
setInverse <-function(inverse){
           im<-inverse
}

## get the inverse of the matrix
getInverse <-function(){
            ##return the inverse property
           im
}
## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse()
        
        ##in case of already there, return the value
        if(!is.null(m)){
                message("data from cache")
                return(m)
        } 
        data <-x$get()
	  ##calculate inverse
        m<-solve(data)%*%data
        x$setInverse(m)
        ##return the matrix
        m
        
}
