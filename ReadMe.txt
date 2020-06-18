gregnet.mat is a previously trained object. 

396 experimental data (i.e., total electron ionization cross section ratios at 70 or 75 eV w.r.t. n-hexane) is used to 
train a neural network model with 10 perceptrons. The training was performed for 500 times by varying the training
subdataset. Group and atom descriptors are sufficient to describe the structure of the molecule in this case.

The predcited result observed to lie within less than 10% of the experimental data.

Once we obtain the cross section ratio (1st column of TEICS70_out matrix), we need to multiply it with 
linear calibartion factor (in response/mol) of n-hexane to obtain the linear calibration factor of the compound.

A point to note that the linear calibartion factor depends on the dectector saturation. 
High amount of n-hexane injection leads to lower the calibartion factor due to detector saturation.
Thus, the final calibration factor of the compound will be applicalbe to that mole range where the n-hexane
is calibarted.


