module Lazy where
    nats :: [Integer]
    nats = 0 : map (+1) nats
