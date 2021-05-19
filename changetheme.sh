# A theme applied to LibreOffice apps.
# You can specify a different theme such as "Adwaita-dark".
GTK_THEME="Adwaita"

# Copy the original "libreoffice-*.desktop" files to the local directory.
find /usr/share/applications -name "libreoffice*" | xargs -i cp {} ~/.local/share/applications

# Insert "env GTK_THEME=foo " into the each copied files.
find ~/.local/share/applications -name "libreoffice*" | xargs sed -i "s/Exec=/Exec=env GTK_THEME=$GTK_THEME /g"
