#!/bin/bash

cat <<EOF
BEGIN:VCALENDAR
PRODID:-//Google Inc//Google Calendar ical//EN
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:PUBLISH

EOF

for f in "$@"
do
  cat $f
done

cat <<EOF
END:VCALENDAR
EOF
