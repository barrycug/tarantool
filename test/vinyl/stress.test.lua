#!/usr/bin/env tarantool

test_run = require('test_run').new()

require('stress').stress(100)

test_run:cmd('restart server default')

require('stress').stress(100)

test_run:cmd('restart server default')
