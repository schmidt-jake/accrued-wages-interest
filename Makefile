.PHONY: init update

init : ;
	curl -LsSf https://astral.sh/uv/install.sh | sh;
	uv sync;

update : ;
	uv self update;
	uv lock -U;
	uv sync;
	uv cache prune;
