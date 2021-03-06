-- This is the default lua script that is used when
-- a script is not specified by the user.

-- This expects that the url specified confirms to
-- the graphql url POST spec.

local gqbench = require "bench-lib"

local req_body = ""
function init(args)
  req_body = gqbench.init(args)
end

function request()
  return gqbench.request(wrk, req_body)
end

function done(s, l, r)
  gqbench.done(s, l, r)
end
