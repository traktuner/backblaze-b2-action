FROM python:3.13-alpine

LABEL "com.github.actions.name"="Backblaze B2 Sync"
LABEL "com.github.actions.description"="Sync Repository to a Backblaze B2 storage bucket"
LABEL "com.github.actions.icon"="fast-forward"
LABEL "com.github.actions.color"="blue"

LABEL version="0.3.0"
LABEL repository="https://github.com/traktuner/backblaze-b2-action"
LABEL maintainer="Jake Jarvis <jake@jarv.is>"
LABEL current_maintainer="Traktuner <78533119+traktuner@users.noreply.github.com>"

# https://github.com/Backblaze/B2_Command_Line_Tool/releases
#ENV B2CLI_VERSION="2.0.2"

#Use latest B2CLI version
RUN pip install --quiet --no-cache-dir b2

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]