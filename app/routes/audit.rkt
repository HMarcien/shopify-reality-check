#lang racket

(require json
         "../utils/respond.rkt")

(provide handle-audit)


(define (handle-audit req)
  (respond #:code 200
           #:mime "application/json"
           #:body (jsexpr->string
                   #hash((store_name . "mock-store")
                         (total_orders . 134)
                         (late_fulfillments . 22)
                         (avg_delay_days . 2.4)
                         (refund_rate . 0.12)
                         (suspicious_products . #hash((product_id . "123")
                                                      (avg_shipping_delay . 3.7)))
                         (reliability_score . 76.2)))))
