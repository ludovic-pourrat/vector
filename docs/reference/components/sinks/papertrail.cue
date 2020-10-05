package metadata

components: sinks: papertrail: {
  title: "#{component.title}"
  short_description: "Streams log events to [Papertrail][urls.papertrail] via [Syslog][urls.papertrail_syslog]."
  long_description: "[Papertrail][urls.papertrail] is a web-based log aggregation application used by developers and IT team to search and view logs in real time."

  _features: {
    batch: enabled: false
    buffer: enabled: true
    checkpoint: enabled: false
    compression: enabled: false
    encoding: {
      enabled: true
      default: null
      ndjson: null
      text: null
    }
    healthcheck: enabled: true
    multiline: enabled: false
    request: enabled: false
    tls: {
      enabled: true
      can_enable: true
      can_verify_certificate: true
      can_verify_hostname: true
      enabled_default: true
    }
  }

  classes: {
    commonly_used: false
    function: "transmit"
    service_providers: ["Papertrail"]
  }

  statuses: {
    delivery: "at_least_once"
    development: "beta"
  }

  support: {
      input_types: ["log"]

    platforms: {
      "aarch64-unknown-linux-gnu": true
      "aarch64-unknown-linux-musl": true
      "x86_64-apple-darwin": true
      "x86_64-pc-windows-msv": true
      "x86_64-unknown-linux-gnu": true
      "x86_64-unknown-linux-musl": true
    }

    requirements: []
    warnings: []
  }

  configuration: {
  }
}

