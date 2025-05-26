-- name: CreateUser :one
INSERT INTO users (
    username, name, password
) VALUES (
    $1, $2, $3
)
RETURNING id;
