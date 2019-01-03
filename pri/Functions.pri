defineTest(CheckPKG) {
    system("pkg-config --exists '$$1'") {
        return(true)
    } else {
        return(false)
    }
}

#defineReplace
