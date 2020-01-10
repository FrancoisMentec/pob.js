io = {}

function io:open (...)
  print("io.open: ", ...)
end

function io:type(val)
  return false
end
