#lang racket

(provide shopify-api-token)

(define shopify-api-token
  (or (getenv "SHOPIFY_TOKEN")
      (error 'config "SHOPIFY_TOKEN not set")))
