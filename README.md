# Work in progress, still not usable

# LaraCollab

LaraCollab is a project management tool build with Laravel.

### Social login (Google)

1. Setup "OAuth consent screen" on Google Console ([link](https://console.cloud.google.com/apis/credentials/consent)).
2. Create "OAuth Client ID", select Web application when asked for type ([link](https://console.cloud.google.com/apis/credentials)).
3. Use generated "Client ID" and "Client secret" in the `.env` (`GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET`).
