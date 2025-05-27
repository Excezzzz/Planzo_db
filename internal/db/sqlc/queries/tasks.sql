-- name: CreateUser :many
INSERT INTO tasks (id, userid, name, task, status)
VALUES ($1, $2, $3, $4, $5)
RETURNING id, name, status;

-- name: GetTaskByID :many
SELECT name, task, status FROM tasks WHERE id = $1;

-- name: GetTaskStatusByID :many
SELECT name, status FROM tasks WHERE id = $1;

-- name: GetAllTasksFromUser :many
SELECT * FROM tasks WHERE userid = $1;

-- name: ChangeTaskText :exec
UPDATE tasks SET task = $2 WHERE id = $1;

-- name: ChangeTaskName :exec
UPDATE tasks SET name = $2 WHERE id = $1;

-- name: ChangeTaskStatus :exec
UPDATE tasks SET status = $2 WHERE id = $1;

-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = $1;
