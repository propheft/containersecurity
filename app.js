/*
 * Copyright (c) 2014-2021 Bjoern Kimminich.
 * SPDX-License-Identifier: MIT
 */
require('trend_app_protect')
require('./lib/startup/validateDependencies')().then(() => {
  const server = require('./server')
  server.start()
})
