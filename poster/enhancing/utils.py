import numpy as np
from scipy.stats import kendalltau, pearsonr
from sklearn.metrics import mean_squared_error, r2_score

def compute_metrics(true_values, predicted_values):
    """
    Compute the mean unsigned error (MUE), mean signed error (MSE), Kendall's tau, 
    Pearson's correlation, R^2, and root mean squared error (RMSE) between true and predicted values.
    """
    
    mue = np.mean(np.abs(predicted_values - true_values))
    mse = np.mean(predicted_values - true_values)
    kendall = kendalltau(true_values, predicted_values)[0]
    pearson = pearsonr(true_values, predicted_values)[0]
    r2 = r2_score(true_values, predicted_values)
    rmse = np.sqrt(mean_squared_error(true_values, predicted_values))

    return mue, mse, kendall, pearson, r2, rmse