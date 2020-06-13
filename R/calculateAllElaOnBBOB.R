
calculateAllElaOnBBOB = function(bbob_function_id, bbob_instance_id, dimension) {
    library(smoof)
    library(purrr)
    lowerbound = -5
    upperbound = 5
    blocks = 5

    ctrl = list(init_sample.type = "lhs",
      init_sample.lower = lowerbound,
      init_sample.upper = upperbound)
    X = createInitialSample(n.obs = 50 * dimension, dim = dimension, control = ctrl)
    f = smoof::makeBBOBFunction(dimension = dimension, fid = bbob_function_id, iid = bbob_instance_id)
    y = apply(X, 1, f)
    feat.object = createFeatureObject(X = X, y = y, fun = f, blocks = blocks)
    

    map(listAvailableFeatureSets(), function(x) calculateFeatureSet(feat.object, set=x))
    return(map(.x = listAvailableFeatureSets(), .f = function(x) calculateFeatureSet(feat.object, x)))
}
