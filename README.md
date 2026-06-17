# Sentiment Analysis on Amazon Reviews

This repository contains analysis, preprocessing, word-embedding experiments, and classification notebooks for performing sentiment analysis on Amazon product reviews.

Project summary
- Goal: classify Amazon product reviews as positive or negative using classical ML and word-embedding approaches.
- Contents: preprocessing steps, word embedding experiments, and classification notebooks.

What you'll find
- `Preprocessing.ipynb` - data cleaning, tokenization, stopwords removal, and text normalization.
- `Word_Embedding.ipynb` - experiments using word embeddings (e.g. Word2Vec / GloVe / TF-IDF) and visualization.
- `ML_Classification.ipynb` - feature extraction, model training (Logistic Regression, SVM, RandomForest etc.), evaluation and results.

Quick setup (Windows)
1. Clone the repository:

   git clone <your-repo-url>
   cd Sentiment-Analysis-on-Amazon-Reviews

2. Create and activate a Python virtual environment (PowerShell):

   python -m venv .venv
   .\.venv\Scripts\Activate.ps1

3. Upgrade pip and install dependencies:

   pip install -U pip
   pip install -r requirements.txt

4. Start JupyterLab or Jupyter Notebook and open the notebooks:

   jupyter lab
   # or
   jupyter notebook

Notes on data
- This repository does not include the raw Amazon dataset. Download a suitable Amazon reviews dataset (for example from Kaggle or the SNAP Amazon review datasets) and place it under a `data/` directory at the repository root. Typical filenames used in the notebooks are `data/reviews.csv` or `data/amazon_reviews.csv`.

Running the notebooks
- Open the notebooks in Jupyter and run cells sequentially. The notebooks are organized so preprocessing is done first (`Preprocessing.ipynb`), then embeddings (`Word_Embedding.ipynb`), and finally model training and evaluation (`ML_Classification.ipynb`).

Optional automated setup (PowerShell)
- A helper script `setup_and_run.ps1` is provided to create a venv, install requirements, and launch JupyterLab on Windows. Run it from PowerShell:

   powershell -ExecutionPolicy Bypass -File .\setup_and_run.ps1

Development & reproducibility
- Use a virtual environment and the `requirements.txt` provided. If you make changes to dependencies, regenerate `requirements.txt` using `pip freeze > requirements.txt`.

Contributing
- Feel free to open issues or PRs to add features (e.g., notebook automation, evaluation scripts, or tests). If you add a script-based pipeline, include a short README section explaining how to run it.

License
- This project includes a `LICENSE` file at the repository root. Please follow the license terms when re-using or redistributing.

Contact
- If you need help running the notebooks or want improvements (for example to provide standalone scripts for preprocessing and training), open an issue with details.
