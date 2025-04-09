#lang racket

(require json
         "../utils/respond.rkt")

(provide handle-predict-delay)

(define (handle-predict-delay req)
  (respond #:code 200
           #:mime "application/json"
           #:body (jsexpr->string #hash((delay_probability . 0.84)
                                        (estimated_delay_days . 2.7)
                                        (risk_level . "high")))))
