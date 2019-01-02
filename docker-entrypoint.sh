#!/bin/sh

exec jupyter notebook &
exec tensorboard --logdir $TENSORFLOW_LOGDIR
