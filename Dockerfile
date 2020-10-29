FROM python:3.8-alpine

LABEL "com.github.actions.name"="Backblaze B2 Sync"
LABEL "com.github.actions.description"="Sync Repository to a Backblaze B2 storage bucket"
LABEL "com.github.actions.icon"="fast-forward"
LABEL "com.github.actions.color"="blue"

LABEL version="0.2.1"
LABEL repository="https://github.com/earendildev/backblaze-b2-action"
LABEL maintainer="Jake Jarvis <jake@jarv.is>"
LABEL current_maintainer="Earendil <17042142+earendildev@users.noreply.github.com>"

# https://github.com/Backblaze/B2_Command_Line_Tool/releases
ENV B2CLI_VERSION="2.0.2"

RUN pip install --quiet --no-cache-dir b2==${B2CLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
