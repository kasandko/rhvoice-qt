defineTest(CheckPKG) {
    system("pkg-config --exists '$$1'") {
        return(true)
    } else {
        return(false)
    }
}

defineReplace(Stringify) {
    in = $$1
    v = $$replace(in, '\\\\', "\\\\")
    v2 = $$replace(v, '\\\"', '\\\"')
    v3 = '\\\"$$v2\\\"'
    return($$v3)
}

#defineReplace
