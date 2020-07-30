

lhsSampling = function(lowerbound, upperbound, dimension) {
    lowerbound = -5
    upperbound = 5
    ctrl = list(init_sample.type = "lhs",
      init_sample.lower = lowerbound,
      init_sample.upper = upperbound)
    return(createInitialSample(n.obs = 50 * dimension, dim = dimension, control = ctrl))
}