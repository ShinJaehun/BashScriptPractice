#!/bin/bash
logit(){
	logger -s -t randomly -i -p user.info $1
}
logit $RANDOM
logit $RANDOM
logit $RANDOM
