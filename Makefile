COMPOSE_FILE=./compose.yml
COMPOSE_COMMAND=docker compose -f ${COMPOSE_FILE}

OLLAMA_CONTAINER=ollama
MODEL_NAME=deepseek-r1:1.5b

up:
	${COMPOSE_COMMAND} up -d
	docker exec -it ${OLLAMA_CONTAINER} ollama pull ${MODEL_NAME}

down:
	${COMPOSE_COMMAND} down
