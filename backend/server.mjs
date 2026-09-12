import { createServer } from "node:http";

const port = Number(process.env.PORT ?? 3000);

const today = {
  date: new Date().toISOString().slice(0, 10),
  priorities: [
    { id: "first-step", title: "Выбрать один следующий шаг", completed: false },
    { id: "small-win", title: "Сделать что-то небольшое для себя", completed: false },
  ],
};

function sendJson(response, statusCode, body) {
  response.writeHead(statusCode, { "content-type": "application/json; charset=utf-8" });
  response.end(JSON.stringify(body));
}

const server = createServer((request, response) => {
  if (request.method === "GET" && request.url === "/health") {
    sendJson(response, 200, { status: "ok" });
    return;
  }

  if (request.method === "GET" && request.url === "/api/today") {
    sendJson(response, 200, today);
    return;
  }

  sendJson(response, 404, { error: "not_found" });
});

server.listen(port, () => {
  console.log(`presnya backend listening on http://localhost:${port}`);
});
