{{- define "env.template" }}
- name: {{ .env }}
  valueFrom:
    secretRef:
      name: "{{ .name }}-secret"
      key: {{ .env }}
{{- end }}