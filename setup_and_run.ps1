# setup_and_run.ps1
# Creates a venv, installs requirements, and starts JupyterLab (Windows PowerShell)

$venvPath = ".venv"

if (-not (Test-Path $venvPath)) {
	Write-Host "Creating virtual environment at $venvPath..."
	python -m venv $venvPath
} else {
	Write-Host "Virtual environment already exists at $venvPath"
}

Write-Host "Activating virtual environment..."
$activate = Join-Path $venvPath "Scripts\\Activate.ps1"
if (Test-Path $activate) {
	& $activate
} else {
	Write-Host "Activation script not found. You can activate manually: .\\.venv\\Scripts\\Activate.ps1"
}

Write-Host "Upgrading pip and installing requirements (if requirements.txt exists)..."
python -m pip install --upgrade pip
if (Test-Path "requirements.txt") {
	pip install -r requirements.txt
} else {
	Write-Host "requirements.txt not found. Please create one or install required packages manually."
}

Write-Host "Starting Jupyter Lab..."
jupyter lab
