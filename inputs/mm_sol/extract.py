import numpy as np
import pickle

# Load the pickle file
with open("fes.pickle", "rb") as file:
    data = pickle.load(file)

    # Display the loaded data
    print(data.keys())


d = np.asarray(data["_U_kl"])[:, :198]
print(d.shape)
np.save("extract.npy", d)
