# About Data
 - Dataset of survey results to predict "how is religion important in one's life".
 - There are five possible responses for this question, which are: {'no answer':-1, 'very important':1, 'quite important':2, 'not important':3, 'not at all important':4}.
 - The data contains 48,000 observations for training data and 11438 observations for test data.
 - Each observation is a survey response of one person in different European countries.

# Files
 - X_train.csv - the training set without target
 - X_test.csv - the test set without target
 - y_train.csv - the training set of target
 - sample_submission.csv - a sample submission file in the correct format
 - codebook.txt - (IMPORTANT) detailed descriptions of each column

# Evaluation
- The evaluation metric for this competition is Multiclass Logarithmic Loss, which is the negative log likelihood divided by the number of observations. Lower is better.

$\displaystyle\text{MulticlassLogarithmLoss} = -\frac{1}{N} \sum_{i=1}^{N} \sum_{j=1}^{M} y_{ij} \log(p_{ij})$

where:
- $N$ is the number of observations.
- $M$ is the number of classes.
- $y_{ij}$ is an indicator, being 1 if sample $i$ belongs to class $j$, and 0 otherwise.
- $p_{ij}$ is the probability predicted by the model that sample $i$ belongs to class $j$.
