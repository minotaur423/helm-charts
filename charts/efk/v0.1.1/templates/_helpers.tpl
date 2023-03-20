{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "efk.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "efk.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hostslist" -}}
{{- $nodeCount := .replicaCount | int }}
  {{- range $index0 := until $nodeCount -}}
    {{- $index1 := $index0 | add1 -}}
es-cluster-{{ $index0 }}.elasticsearch{{ if ne $index1 $nodeCount }},{{ end }}
  {{- end -}}
{{- end -}}


{{- define "nodeslist" -}}
{{- $nodeCount := .replicaCount | int }}
  {{- range $index0 := until $nodeCount -}}
    {{- $index1 := $index0 | add1 -}}
es-cluster-{{ $index0 }}{{ if ne $index1 $nodeCount }},{{ end }}
  {{- end -}}
{{- end -}}


