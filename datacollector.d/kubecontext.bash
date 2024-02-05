#!/bin/bash
kubectl config get-contexts|grep '*' 2>/dev/null | awk '{print $3}' | tail -n 1 || echo -n
