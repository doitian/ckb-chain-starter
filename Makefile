deps: requirements.txt
	pip install -U -r requirements.txt

requirements.txt: requirements.in
	pip-compile --version || pip install pip-tools
	pip-compile
