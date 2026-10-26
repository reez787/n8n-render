# n8n on Render (free web service) - external Postgres (Supabase) holds all data, because Render's free disk is ephemeral. The current n8n image ships no shell, so no sh-based CMD - the image's own entrypoint starts n8n, configured purely via ENV.
FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
