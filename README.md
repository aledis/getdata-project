As a first step, we read the names of the features and names of the activities.

Next, using grepl function we select all the features that contain mean() and std().
We include in the data both time measurements and Fourier
Transforms. We escape ( in regular expression for mean and std to make sure we get mean and std followed
by open parenthesis. This allows us to exclude names containing for example meanFreq(). All the names are
prepended with "Avg." to indicate that the data contains averages of means and stdevs.

Selected feature names are further renamed to substitute mean() with Mean, std() with Stdev and - with period
in order to standardize the names of the measurements.

As a next step, we read the data from X_ files, form it into a matrix, subset it only to features that we 
selected in previous step and set column names to standardized names.

After that, data is transformed to data_frame, subject and activity columns added ( when we add activity column,
we use Y_ vector values to select from the list of activity names ), we group data by activity and subject and
summarize the rest of measurements by mean function.

Finally the data is written to file UCIHARDataset.txt

 
