#' @title calculate all ela on bbob
#'
#' @export


lhsSampling = function(lowerbound, upperbound, dimension, numberOfSample) {
    # numberOfSampleの目安は dimension * 50
    lowerbound = -5
    upperbound = 5
    ctrl = list(init_sample.type = "lhs",
      init_sample.lower = lowerbound,
      init_sample.upper = upperbound)
    return(createInitialSample(n.obs = numberOfSample, dim = dimension, control = ctrl))
}

calculateAllFeatures = function(x, y) {
    feat.object = createFeatureObject(X = x, y = y, blocks = 5, force = TRUE)
    return(calculateFeatures(feat.object))
}
