call build.cmd
start "" python -m http.server 8080
start http://localhost:8080/syobon.html