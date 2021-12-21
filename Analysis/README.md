# Analysis

I ran unsupervised machine learning model for Treasury rates and SP500 price, volume, and volatility metrics.  The features were optimized using a Kmeans and PCA elbow method down to 5 classes.  The 5 classes are color coded as shown above.  
  
This is how the machine classified the different market regimes based on both the interest rate and SP500 values.  
  
This model can predict if we are changing regimes. It doesn't appear to be useful for price prediction, looks like correlations have broken down and changed over time.  
  
The goal is to be able to detect when market regimes are changing to be able to position our portfolios accordingly.  
  
The purple may correlate to accomodative Fed policy, looks like it has initiated accomodative policy during crises in the past, but later just kept on the accomodation.  
  
Teal is a recovery period.  
  
Green looks like healthy behavior.  
It's unclear what yellow is but it has been identified as different from the other previous classes. Yellow appears to correlate with the period from 2004. We may be in for a similar market as the 2004 to 2007 period. But we have just flipped green, the same as what happened in 2007. This could signify a turning point.  
  
Blue may just be a different regime for higher interest rates.  