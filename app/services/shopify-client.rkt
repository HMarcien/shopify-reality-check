#lang racket

(require "../config/config.rkt")

(displayln (string-append "Authorization: Bearer " shopify-api-token))
