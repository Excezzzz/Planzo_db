-- name: CreateUser :one
INSERT INTO users (username, name, password)
VALUES ($1, $2, $3)
RETURNING id;

-- name: GetUserNameByID :one
SELECT name FROM users WHERE id = $1;

-- name: GetUserByUsername :one
SELECT * FROM users WHERE username = $1;

-- name: GetPasswordByUsername :one
SELECT password FROM users WHERE username = $1;

-- name: ChangeUsername :exec
UPDATE users SET username = $2 WHERE id = $1;

-- name: ChangeName :exec
UPDATE users SET name = $2 WHERE id = $1;

-- name: ChangePassword :exec
UPDATE users SET password = $2 WHERE id = $1;

-- name: ListUsers :many
SELECT * FROM users;

-- name: DeleteUser :exec
DELETE FROM users WHERE id = $1;
