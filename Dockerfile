# n8n on Render (free web service) — external Postgres (Supabase) holds all data,
# because Render's free disk is ephemeral.
FROM docker.n8n.io/n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https

# Render injects $PORT at runtime; n8n must listen on it.
CMD ["sh", "-c", "export N8N_PORT=${PORT:-10000}; exec n8n start"]
