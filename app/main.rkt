#lang racket

(require web-server/dispatch
         web-server/servlet-env
         "./routes/audit.rkt"
         "./routes/predict-delay.rkt"
         "./utils/respond.rkt")

(define-values (url-dispatcher _)
  (dispatch-rules
   [("audit") handle-audit]
   [("predict-delay") handle-predict-delay]
   [else not-found]))

(module+ main
  (serve/servlet
   url-dispatcher
   #:port 8080
   #:servlet-regexp #rx""
   #:launch-browser? #f))
