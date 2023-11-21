case "${1:-}" in
		overview|ehr|query|definition)
			docker-compose run -d --rm -w "/spec/specifications" -p 80:80 -p 32201:32201 redocly preview-docs "$1".openapi.yaml -h 0.0.0.0 -p 80
			;;
		"")
			echo "Usage: watch.sh [overview|ehr|query|definition]"
			;;
	esac
