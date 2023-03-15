FROM docker.io/linuxserver/blender:3.4.1
RUN apt-get update && \
    apt-get install -qy make unzip 

RUN curl -Lo /tmp/godot.zip https://github.com/godotengine/godot/releases/download/4.0-stable/Godot_v4.0-stable_linux.x86_64.zip && \
    unzip /tmp/godot.zip -d /tmp && \
    mv /tmp/Godot_v4.0-stable_linux.x86_64 /usr/local/bin/godot && \
    rm /tmp/godot.zip

RUN curl -Lo /tmp/templates.zip https://github.com/godotengine/godot/releases/download/4.0-stable/Godot_v4.0-stable_export_templates.tpz && \
    unzip /tmp/templates.zip -d /tmp && \
    mkdir -p /root/.local/share/godot/export_templates && \
    mv /tmp/templates  /root/.local/share/godot/export_templates/4.0.stable && \
    rm /tmp/templates.zip

COPY editor_settings-4.tres /root/.config/godot/
WORKDIR /work
ENTRYPOINT ["/usr/bin/make"]
CMD ["ci"]
