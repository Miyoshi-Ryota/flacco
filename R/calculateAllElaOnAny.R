

lhsSampling = function(lowerbound, upperbound, dimension) {
    lowerbound = -5
    upperbound = 5
    ctrl = list(init_sample.type = "lhs",
      init_sample.lower = lowerbound,
      init_sample.upper = upperbound)
    return(createInitialSample(n.obs = 50 * dimension, dim = dimension, control = ctrl))
}

calculateAllFeatures = function(x, y) {
    feat.object = createFeatureObject(X = x, y = y, blocks = 5)
    return(calculateFeatures(feat.object))
}
