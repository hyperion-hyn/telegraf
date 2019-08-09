#!/bin/bash

cat > /go/src/github.com/influxdata/telegraf/plugins/inputs/all/all.go <<EOF
package all

import (
	_ "github.com/influxdata/telegraf/plugins/inputs/cpu"
    _ "github.com/influxdata/telegraf/plugins/inputs/mem"
)
EOF

cat > /go/src/github.com/influxdata/telegraf/plugins/outputs/all/all.go <<EOF
package all

import (
    _ "github.com/influxdata/telegraf/plugins/outputs/influxdb"
)
EOF
