build:
	poetry build

install:
	poetry install

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl

reinstall: build publish package-install
	pip install --user dist/*.whl --force-reinstall

full-reinstall: build publish package-install reinstall

say-hello:
	@echo 'Hello, World!'

.PHONY: build install publish package-install